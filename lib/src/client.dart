import 'dart:convert';

import 'package:doki_websocket_client/src/payload/chat-message/chat_message.dart';
import 'package:doki_websocket_client/src/payload/delete-message/delete_message.dart';
import 'package:doki_websocket_client/src/payload/edit-message/edit_message.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/payload/typing-status/typing_status.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

typedef AsyncValueGetter<T> = Future<T> Function();
typedef ValueSetter<T> = Function(T message);

class Client {
  Client({
    required this.url,
    required this.getToken,
    this.onChatMessageReceived,
    this.onTypingStatusReceived,
    this.onEditMessageReceived,
    this.onDeleteMessageReceived,
  });

  final Uri url;
  final AsyncValueGetter<String> getToken;

  final ValueSetter<ChatMessage>? onChatMessageReceived;
  final ValueSetter<TypingStatus>? onTypingStatusReceived;
  final ValueSetter<EditMessage>? onEditMessageReceived;
  final ValueSetter<DeleteMessage>? onDeleteMessageReceived;

  IOWebSocketChannel? _socketChannel;

  Future<void> connect() async {
    if (_socketChannel != null) return;

    String jwtToken = await getToken();
    Map<String, dynamic> headers = {
      "Authorization": "Bearer $jwtToken",
    };

    final websocketChannel = IOWebSocketChannel.connect(
      url.toString(),
      headers: headers,
    );

    await websocketChannel.ready;
    _socketChannel = websocketChannel;

    _socketChannel!.stream.listen((payload) {
      print(payload);

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
    });
  }

  void disconnect() {
    if (_socketChannel == null) return;

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
