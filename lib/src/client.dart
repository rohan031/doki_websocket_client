import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:doki_websocket_client/src/payload/chat-message/chat_message.dart';
import 'package:doki_websocket_client/src/payload/delete-message/delete_message.dart';
import 'package:doki_websocket_client/src/payload/edit-message/edit_message.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/payload/typing-status/typing_status.dart';
import 'package:doki_websocket_client/src/utils/generate_string.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

/// basic typedef similar to [https://api.flutter.dev/flutter/foundation/foundation-library.html]
typedef AsyncValueGetter<T> = Future<T> Function();
typedef ValueSetter<T> = Function(T message);
typedef VoidCallback = Function();
typedef ValueGetter<T> = T Function();

/// amount of retries before giving up reconnection
/// this is based on exponential backoff strategy
/// eg. time before retrying: 2s, 4s, 8s, 16s... (2^limit+1)
const int limit = 6;

class Client {
  Client({
    required this.url,
    required this.getToken,
    required this.onChatMessageReceived,
    required this.onTypingStatusReceived,
    required this.onEditMessageReceived,
    required this.onDeleteMessageReceived,
    required this.onReconnectSuccess,
    required this.onConnectionClosure,
  }) : _resource = generateRandomString();

  /// url is the websocket connection uri
  final Uri url;

  /// getToken gives the token that is used by your websocket server
  /// token can either be accessToken or idToken
  final AsyncValueGetter<String> getToken;

  /// resource part to identify each user session
  /// even if they are using same account but different device
  final String _resource;

  /// onChatMessageReceived is invoked when new [ChatMessage] is received
  /// [ChatMessage] can either be by same user with different resource or from another user
  final ValueSetter<ChatMessage> onChatMessageReceived;

  /// onTypingStatusReceived is invoked when [TypingStatus] is received
  /// [TypingStatus] is only send by different user than the current
  /// in UI just show the typing status for around 5seconds and than remove
  /// if user is still typing it will send [TypingStatus] every 4 seconds (something lower than view timeout)
  final ValueSetter<TypingStatus> onTypingStatusReceived;

  /// onEditMessageReceived is invoked when [EditMessage] is received
  /// [EditMessage] can either be by same user with different resource or from another user
  /// in client give priority to updating the message
  final ValueSetter<EditMessage> onEditMessageReceived;

  /// onDeleteMessageReceived is invoked when [DeleteMessage] is received
  /// [DeleteMessage] can either be only by same user with different resource when using delete for me
  /// this will be by different user when the user wants to remove the send message
  /// in client give priority to deleting message
  final ValueSetter<DeleteMessage> onDeleteMessageReceived;

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
      pingInterval: Duration(
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
      Duration(seconds: 1 << _tries),
      () async {
        try {
          _tries++;
          await connect();
        } on WebSocketChannelException catch (_) {
          if (_tries < limit) {
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
  /// for this is using json, later will upgrade to protobuf
  void _handleServerPayload(dynamic payload) {
    // decode payload to map
    final messageMap = jsonDecode(payload) as Map<String, dynamic>;
    PayloadType? type = PayloadTypeValue.fromValue(messageMap["type"]);
    if (type == null) return;

    switch (type) {
      case PayloadType.chatMessage:
        final message = ChatMessage.fromJSON(messageMap);
        onChatMessageReceived(message);
      case PayloadType.typingStatus:
        final message = TypingStatus.fromJSON(messageMap);
        onTypingStatusReceived(message);
      case PayloadType.editMessage:
        final message = EditMessage.fromJSON(messageMap);
        onEditMessageReceived(message);
      case PayloadType.deleteMessage:
        final message = DeleteMessage.fromJSON(messageMap);
        onDeleteMessageReceived(message);
    }
  }

  /// disconnect closes the underlying websocket connection to the server
  /// with [status.normalClosure]
  void disconnect() {
    if (_socketChannel == null) return;

    _isManuallyClosed = true;
    _socketChannel!.sink.close(status.normalClosure);
    _socketChannel = null;
  }

  /// sendMessage method is used to send message to particular user
  bool sendMessage(ChatMessage message) {
    if (_socketChannel == null) return false;

    _socketChannel!.sink.add(message.toJSON());
    return true;
  }

  /// sendTypingStatus method is used to send typing status to particular user
  bool sendTypingStatus(TypingStatus status) {
    if (_socketChannel == null) return false;

    _socketChannel!.sink.add(status.toJSON());
    return true;
  }

  /// editMessage method is used to edit user's own message
  bool editMessage(EditMessage message) {
    if (_socketChannel == null) return false;

    _socketChannel!.sink.add(message.toJSON());
    return true;
  }

  /// deleteMessage is used to delete any message for them
  /// additionally it also allows to delete message for everyone that is our own message
  bool deleteMessage(DeleteMessage message) {
    if (_socketChannel == null) return false;

    _socketChannel!.sink.add(message.toJSON());
    return true;
  }
}
