import 'package:doki_websocket_client/src/payload/chat-message/chat_message.dart';
import 'package:doki_websocket_client/src/payload/delete-message/delete_message.dart';
import 'package:doki_websocket_client/src/payload/edit-message/edit_message.dart';
import 'package:doki_websocket_client/src/payload/typing-status/typing_status.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

typedef AsyncValueGetter<T> = Future<T> Function();

class Client {
  Client({
    required this.url,
    required this.getToken,
  });

  final Uri url;
  final AsyncValueGetter<String> getToken;
  IOWebSocketChannel? socketChannel;

  Future<void> connect() async {
    if (socketChannel != null) return;

    String jwtToken = await getToken();
    Map<String, dynamic> headers = {
      "Authorization": "Bearer $jwtToken",
    };

    final websocketChannel = IOWebSocketChannel.connect(
      url.toString(),
      headers: headers,
    );

    await websocketChannel.ready;
    socketChannel = websocketChannel;

    socketChannel!.stream.listen((message) {
      print(message);
    });
  }

  void disconnect() {
    if (socketChannel == null) return;

    socketChannel!.sink.close(status.normalClosure);
  }

  void sendMessage(ChatMessage message) {
    if (socketChannel == null) return;

    socketChannel!.sink.add(message.toJSON());
  }

  // void sendGroupChatMessage() {}

  void sendTypingStatus(TypingStatus status) {}

  void editMessage(EditMessage message) {}

  void deleteMessage(DeleteMessage message) {}
}
