import 'dart:io';

import 'package:doki_websocket_client/src/client.dart';
import 'package:doki_websocket_client/src/payload/chat-message/chat_message.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<String> getToken() async {
  return "eyJraWQiOiJxXC9HOE5cL2VGWkZNakUyVWJQa1RhMVNiQVIrN1JSODcxM0NPaTJcL2xrMFV3PSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiIyZGM5YjI1OS1iZjllLTQyMjUtYTMyZi1jOGI1OGE3N2JjNGEiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLmFwLXNvdXRoLTEuYW1hem9uYXdzLmNvbVwvYXAtc291dGgtMV84RkRuSEVzS0IiLCJjb2duaXRvOnVzZXJuYW1lIjoiMmRjOWIyNTktYmY5ZS00MjI1LWEzMmYtYzhiNThhNzdiYzRhIiwicHJlZmVycmVkX3VzZXJuYW1lIjoicm9oYW5fdmVybWFfXyIsIm9yaWdpbl9qdGkiOiJhMTFiZmJhYi0yM2ZiLTRjNzktODMxYS04NTA0OGEwMTY0NGIiLCJhdWQiOiI1a2w5OHNla25zbm12ZGczMDduaG1pcDIxYyIsImV2ZW50X2lkIjoiZjVlNWI1YjYtM2NhNC00MmZmLTlkN2UtYzgzOGFkMzczOTBiIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE3MzczNzE0NzAsIm5hbWUiOiJyb2hhbiIsImV4cCI6MTczNzQ2MDAzOCwiaWF0IjoxNzM3NDU2NDM4LCJqdGkiOiI3NTY4MzgzYi0xZjczLTQ0MTktOWVjOC1jNmVmMmE3MzJhMzYiLCJlbWFpbCI6InJvaGFudmVybWEwMzFAZ21haWwuY29tIn0.kZpDUQNnInrDfNv7lt1IRu5GCURmSklgN5xgkIZvCFgLKMVFpHYoGJL1RBrmB6DeEM0L1hXuylEZw139mWxi6REiRgiGZ1vrtLMw7lAoty0llxgH0My4EEpkkeeReX1DjU4zngZcTEBf5GwvJKvlYWUh7_EpwNu7Sgvn_U_MKjkRLpFnlrCl50xmBuNT_h24IAFYjoK1Ncgj-WkRNkCCUxiIum_0l0RnSmabNWb-qjaU5Ljs389eaECP5OAvlP23LUQ5Jrtv2wWyynPred6yBbYSUC2cJAIrL5mXYYYmu8qkFqBiR-bpNxfCpeb45wKywWT35u6HCZBFJd2PjGR3jg";
}

void main() async {
  final client = Client(
      url: Uri.parse("wss://rtc.doki.co.in/ws"),
      getToken: getToken,
      onChatMessageReceived: (ChatMessage message) {
        print(message.toJSON());
      });

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
