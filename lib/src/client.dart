import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/utils/generate_string.dart';
import 'package:doki_websocket_client/src/utils/jitter.dart';
import 'package:doki_websocket_client/src/utils/typedefs.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

/// amount of retries before giving up reconnection
/// this is based on exponential backoff strategy
/// eg. time before retrying: 1s, 2s, 4s, 8s, 16s... (2^limit)
const int limit = 6;

class Client {
  Client({
    required this.url,
    required this.getToken,
    required this.onReconnectSuccess,
    required this.onConnectionClosure,
    required this.payloadHandler,
    this.pingInterval,
  }) : _resource = generateResource();

  /// pingInterval defines the default ping interval clients required
  /// if no pingInterval is passed default 30 seconds is used
  Duration? pingInterval;

  /// payloadHandler contains all the handlers that are required by the client
  final Map<PayloadType, PayloadHandler> payloadHandler;

  /// url is the websocket connection uri
  final Uri url;

  /// getToken gives the token that is used by your websocket server
  /// token can either be accessToken or idToken
  final AsyncValueGetter<String> getToken;

  /// resource part to identify each user session
  /// even if they are using same account but different device
  final String _resource;

  /// onReconnectSuccess is invoked when user is successfully reconnected to the websocket server
  /// this method should be used to refetch the inbox and syncing of the archives after disconnect
  final VoidCallback onReconnectSuccess;

  /// onConnectionClosure is invoked with the retry function
  /// client is suppose to check if application is in foreground and have internet connectivity
  /// and then call the retry callback
  final ValueSetter<VoidCallback> onConnectionClosure;

  /// socketChannel holds the underlying [IOWebSocketChannel]
  /// provided by the web_socket_channel package
  IOWebSocketChannel? _socketChannel;

  /// isActive is used by client to check
  /// if underlying [WebSocket] connection is alive
  bool get isActive => _socketChannel != null;

  bool get isNotActive => _socketChannel == null;

  /// isManuallyClosed is to prevent retrying of connection after [disconnect] is called
  /// [disconnect] should be called when exiting the app to free up any used resources
  bool _isManuallyClosed = false;

  /// tries is to manage number of reconnect request to server after termination of the connection
  int _tries = -1;

  /// connect is used to connect to the websocket server
  /// if an existing connection exists it does nothing
  Future<void> connect() async {
    if (_socketChannel != null) return;

    String jwtToken = await getToken();
    Map<String, dynamic> headers = {
      "Authorization": "Bearer $jwtToken",
    };
    Uri connectionUrl = url.replace(queryParameters: {
      "resource": _resource,
    });

    final websocketChannel = IOWebSocketChannel.connect(
      connectionUrl,
      headers: headers,
      pingInterval: pingInterval ??
          Duration(
            seconds: 30,
          ),
      connectTimeout: Duration(
        seconds: 30,
      ),
    );

    await websocketChannel.ready;

    if (_tries != -1) {
      onReconnectSuccess();
    }
    _tries = -1;
    _socketChannel = websocketChannel;

    _socketChannel!.stream.listen(
      _handleServerPayload,
      onError: (error) {
        _handleConnectionClosure();
      },
      onDone: _handleConnectionClosure,
    );
  }

  /// handleConnectionClosure is called by [IOWebSocketChannel] stream
  /// when onError or onDone is called
  void _handleConnectionClosure() {
    if (_isManuallyClosed) return;
    if (_tries == -1) _tries = 0;
    _socketChannel = null;

    onConnectionClosure(_handleLostConnection);
  }

  /// handleLostConnection allows to retry connection to websocket server
  void _handleLostConnection() {
    if (_tries == -1) return;

    Timer(
      Duration(seconds: 1 << _tries + randomJitter()),
      () async {
        try {
          _tries++;
          await connect();
        } on WebSocketChannelException catch (_) {
          if (_tries <= limit) {
            _handleLostConnection();
          } else {
            // allow client to try reconnecting if app is in foreground with active internet connection
            _tries = 0;
            onConnectionClosure(_handleLostConnection);
          }
        } catch (e) {
          return;
        }
      },
    );
  }

  /// handleServerPayload decodes the incoming message and
  /// calls the respective callback for the payload
  /// for now this is using json, later will upgrade to protobuf
  void _handleServerPayload(dynamic json) {
    // decode payload to map
    final payloadMap = jsonDecode(json) as Map<String, dynamic>;
    PayloadType payloadType = PayloadType.fromValue(payloadMap["type"]);
    // PayloadType? type = payloadTypeMap[payloadMap["type"]];
    if (payloadType == PayloadType.unknown) {
      log("Encountered unknown payload type");
      return;
    }

    if (payloadType.decoder != null) {
      // valid decoder
      var payload = payloadType.decoder!(payloadMap);
      if (payloadHandler.containsKey(payloadType)) {
        payloadHandler[payloadType]!(payload);
      }
    }

    return;
  }

  /// disconnect closes the underlying websocket connection to the server
  /// with [status.normalClosure]
  void disconnect() {
    if (isNotActive) return;

    _isManuallyClosed = true;
    _socketChannel!.sink.close(status.normalClosure);
    _socketChannel = null;
  }

  void _sendPayload(BasePayload payload) {
    _socketChannel?.sink.add(jsonEncode(payload.toJson()));
  }

  Future<bool> sendPayload(BasePayload payload) async {
    if (isNotActive) {
      try {
        bool callReconnect = _tries == -1;
        await connect();
        if (callReconnect) onReconnectSuccess();
      } catch (e) {
        return false;
      }
    }

    _sendPayload(payload);
    return true;
  }
}
