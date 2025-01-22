import 'dart:io';

import 'package:doki_websocket_client/src/client.dart';
import 'package:doki_websocket_client/src/payload/chat-message/chat_message.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<String> getToken() async {
  return "eyJraWQiOiJxXC9HOE5cL2VGWkZNakUyVWJQa1RhMVNiQVIrN1JSODcxM0NPaTJcL2xrMFV3PSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiIyZGM5YjI1OS1iZjllLTQyMjUtYTMyZi1jOGI1OGE3N2JjNGEiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLmFwLXNvdXRoLTEuYW1hem9uYXdzLmNvbVwvYXAtc291dGgtMV84RkRuSEVzS0IiLCJjb2duaXRvOnVzZXJuYW1lIjoiMmRjOWIyNTktYmY5ZS00MjI1LWEzMmYtYzhiNThhNzdiYzRhIiwicHJlZmVycmVkX3VzZXJuYW1lIjoicm9oYW5fdmVybWFfXyIsIm9yaWdpbl9qdGkiOiJhMTFiZmJhYi0yM2ZiLTRjNzktODMxYS04NTA0OGEwMTY0NGIiLCJhdWQiOiI1a2w5OHNla25zbm12ZGczMDduaG1pcDIxYyIsImV2ZW50X2lkIjoiZjVlNWI1YjYtM2NhNC00MmZmLTlkN2UtYzgzOGFkMzczOTBiIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE3MzczNzE0NzAsIm5hbWUiOiJyb2hhbiIsImV4cCI6MTczNzUyNjc0MiwiaWF0IjoxNzM3NTIzMTQyLCJqdGkiOiIzODI0Y2MxOC1hY2EwLTQ1MTUtYTcxMS1hNzkzMjIwMTA3OTgiLCJlbWFpbCI6InJvaGFudmVybWEwMzFAZ21haWwuY29tIn0.FB2sbsV-z0b_JYiJcjuHp_hF85im1rjeu5_O0XqXqGQ_DWIhilIhMOehD7BxTM4rf0vlxe4ooWYTcW3OuS2pNdlx5QxfcYd7eJgdP-MNoFTVRqUq5YNQD4egD-AZMzaxSMJL-gXmGiUgNVHHV9RqLddptc3vw0thMDbPziqfozmuhvxAhilCOmwfkhu4eaeGzPIwAwNuMMcZqf8LX1C_lmXYGG1hrT7lPNTWgO0M-DDFxfKwMBOeXbI-LjxmsnWNRWZ9_gj4jcO6FeEuvlmOlMJAc1pq1S34Jc_4j1ezyi3VPBsY2FkEY4pK3rEA7o41midfP8ut1M0WbXjO7Z2Eiw";
}

void main() async {
  final client = Client(
    url: Uri.parse("wss://rtc.doki.co.in/ws"),
    getToken: getToken,
    onChatMessageReceived: (ChatMessage message) {
      print(message.toJSON());
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

  // client.disconnect();
  // ChatMessage message = ChatMessage(
  //   from: "rohan_verma__",
  //   to: "rohan_verma",
  //   id: "some-random-id",
  //   subject: MessageSubject.text,
  //   body: "Hello from dart client",
  // );
  //
  // client.sendMessage(message);
}
