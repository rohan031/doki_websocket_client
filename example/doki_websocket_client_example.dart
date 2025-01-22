import 'dart:io';

import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<String> getToken() async {
  return "return-token-here";
}

void main() async {
  final client = Client(
    url: Uri.parse("websocket-url-here"),
    getToken: getToken,
    onChatMessageReceived: (ChatMessage message) {
      print(message.toJSON());
    },
    onDeleteMessageReceived: (DeleteMessage message) {},
    onEditMessageReceived: (EditMessage message) {},
    onTypingStatusReceived: (TypingStatus status) {},
    onReconnectSuccess: () {
      /// refetch inbox here
    },
    onConnectionClosure: (retry) {
      /// if foreground and network connectivity
      retry();
    },
  );

  try {
    await client.connect();
  } on WebSocketChannelException catch (e) {
    if (e.inner != null && e.inner is WebSocketException) {
      var err = e.inner as WebSocketException;
      print(err.httpStatusCode == HttpStatus.unauthorized);
    } else {
      print(e);
    }
  }

  ChatMessage message = ChatMessage(
    from: "rohan_verma__",
    to: "amit",
    id: "some-random-id",
    subject: MessageSubject.text,
    body: "Hello from dart client",
  );

  client.sendMessage(message);
  client.disconnect();
}
