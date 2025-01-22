import 'dart:async';
import 'dart:convert';

import 'package:doki_websocket_client/src/payload/chat-message/chat_message.dart';
import 'package:doki_websocket_client/src/payload/delete-message/delete_message.dart';
import 'package:doki_websocket_client/src/payload/edit-message/edit_message.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/payload/typing-status/typing_status.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

typedef AsyncValueGetter<T> = Future<T> Function();
typedef ValueSetter<T> = Function(T message);
const int limit = 6;

class Client {
  Client({
    required this.url,
    required this.getToken,
    required this.resource,
    this.onChatMessageReceived,
    this.onTypingStatusReceived,
    this.onEditMessageReceived,
    this.onDeleteMessageReceived,
  });

  final Uri url;
  final AsyncValueGetter<String> getToken;
  final String resource;

  final ValueSetter<ChatMessage>? onChatMessageReceived;
  final ValueSetter<TypingStatus>? onTypingStatusReceived;
  final ValueSetter<EditMessage>? onEditMessageReceived;
  final ValueSetter<DeleteMessage>? onDeleteMessageReceived;

  IOWebSocketChannel? _socketChannel;
  bool get isActive => _socketChannel != null;

  bool _isManuallyClosed = false;
  int _tries = -1;

  Future<void> connect() async {
    if (_socketChannel != null) return;

    String jwtToken = await getToken();
    Map<String, dynamic> headers = {
      "Authorization": "Bearer $jwtToken",
    };
    Uri connectionUrl = url.replace(queryParameters: {
      "resource": resource,
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
    _tries = -1;
    _socketChannel = websocketChannel;

    _socketChannel!.stream.listen(
      _handleServerPayload,
      onError: (error) {
        if (_tries == -1) _tries = 0;
        _socketChannel = null;
        _handleLostConnection();
      },
      onDone: () {
        if (_isManuallyClosed) return;
        if (_tries == -1) _tries = 0;
        _socketChannel = null;
        _handleLostConnection();
      },
    );
  }

  void _handleLostConnection() {
    if (_tries == -1) return;

    Timer(
      Duration(seconds: 1 << _tries),
      () async {
        try {
          _tries++;
          await connect();
        } on WebSocketChannelException catch (_) {
          if (_tries < limit) _handleLostConnection();
        } catch (e) {
          return;
        }
      },
    );
  }

  void _handleServerPayload(dynamic payload) {
    // decode payload to map
    final messageMap = jsonDecode(payload) as Map<String, dynamic>;
    PayloadType? type = PayloadTypeValue.fromValue(messageMap["type"]);
    if (type == null) return;

    switch (type) {
      case PayloadType.chatMessage:
        final message = ChatMessage.fromJSON(messageMap);
        if (onChatMessageReceived != null) {
          onChatMessageReceived!(message);
        }
      case PayloadType.typingStatus:
        final message = TypingStatus.fromJSON(messageMap);
        if (onTypingStatusReceived != null) {
          onTypingStatusReceived!(message);
        }
      case PayloadType.editMessage:
        final message = EditMessage.fromJSON(messageMap);
        if (onEditMessageReceived != null) {
          onEditMessageReceived!(message);
        }
      case PayloadType.deleteMessage:
        final message = DeleteMessage.fromJSON(messageMap);
        if (onDeleteMessageReceived != null) {
          onDeleteMessageReceived!(message);
        }
    }
  }

  void disconnect() {
    if (_socketChannel == null) return;

    _isManuallyClosed = true;
    _socketChannel!.sink.close(status.normalClosure);
    _socketChannel = null;
  }

  void sendMessage(ChatMessage message) {
    if (_socketChannel == null) return;

    _socketChannel!.sink.add(message.toJSON());
  }

  void sendTypingStatus(TypingStatus status) {
    if (_socketChannel == null) return;

    _socketChannel!.sink.add(status.toJSON());
  }

  void editMessage(EditMessage message) {
    if (_socketChannel == null) return;

    _socketChannel!.sink.add(message.toJSON());
  }

  void deleteMessage(DeleteMessage message) {
    if (_socketChannel == null) return;

    _socketChannel!.sink.add(message.toJSON());
  }
}
