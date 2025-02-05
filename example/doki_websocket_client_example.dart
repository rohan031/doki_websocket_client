import 'dart:io';

import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<String> getToken() async {
  return "your-jwt-token-here";
}

void main() async {
  final client = Client(
      url: Uri.parse("ws://localhost:8080/ws"),
      getToken: getToken,
      onReconnectSuccess: () {
        /// refetch inbox here
      },
      onConnectionClosure: (retry) {
        /// if foreground and network connectivity
        /// they try reconnecting
        retry();
      },
      payloadHandler: {
        PayloadType.userRemovesFriendRelation:
            (UserRemovesFriendRelation message) {
          print(message.toJson());
        },
      });

  try {
    await client.connect();
    TypingStatus status = TypingStatus(
      from: "rohan",
      to: "rohan_verma__",
    );

    client.sendPayload(status);
  } on WebSocketChannelException catch (e) {
    if (e.inner != null && e.inner is WebSocketException) {
      var err = e.inner as WebSocketException;
      print(err.httpStatusCode == HttpStatus.unauthorized);
    } else {
      print(e);
    }
  }
}
