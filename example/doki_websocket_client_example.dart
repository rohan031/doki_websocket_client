import 'dart:io';

import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<String> getToken() async {
  return "eyJraWQiOiJxXC9HOE5cL2VGWkZNakUyVWJQa1RhMVNiQVIrN1JSODcxM0NPaTJcL2xrMFV3PSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJkMGRiMzdlZS0zMDJlLTRkMDMtOGQ5OC01ZDA1Mzg0MTA5M2IiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLmFwLXNvdXRoLTEuYW1hem9uYXdzLmNvbVwvYXAtc291dGgtMV84RkRuSEVzS0IiLCJjb2duaXRvOnVzZXJuYW1lIjoiZDBkYjM3ZWUtMzAyZS00ZDAzLThkOTgtNWQwNTM4NDEwOTNiIiwicHJlZmVycmVkX3VzZXJuYW1lIjoicm9oYW4iLCJvcmlnaW5fanRpIjoiMGJiYTYyMjgtYjUzMi00ZTMwLTk0OWYtNmYyZTg1NDc4NTdkIiwiYXVkIjoiNWtsOThzZWtuc25tdmRnMzA3bmhtaXAyMWMiLCJldmVudF9pZCI6Ijk3OGJjMWZjLTZlYmMtNDNlYi05ZTQ4LTMzZTU0ZDJiNWFkOSIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNzM3OTc0ODYzLCJuYW1lIjoicm9oYW4iLCJleHAiOjE3MzgwODI4NTcsImlhdCI6MTczODA3OTI1NywianRpIjoiYzRkM2U1N2MtY2RhOS00NjUwLThmZWMtOTM4OTAwNDZjMGE0IiwiZW1haWwiOiJ2ZXJtYXJvaGFuMDMxQGdtYWlsLmNvbSJ9.eUeea6tPcg9seS7TdHPXRTaHUopXUFLxjbOYelH2iODe_g0yPaU9b4YK_Yr5il5Lp8TGR2yzIdif1pdYYk7wvNu1j84GbJvgh8unIQqjcXyERE0PVPim85vDHDZyESsdBURZpiulbLH5fErntYv1m4-Eq9sr9_cHiL930vPKX4d-7S_fySb22rEWA4X1qDHcFZapr5X-HioLAD6ZD66qKsgqL1PIBnlsSsifujJ4CVlCIZDJ7sRuKdWYrU4N7Ioni229L19YArW_glu97V-9sr_OuDwCUjH015Fazsnj9SrsuvI7BHakbC44iukK69mmfhkkVimFlDckQPSIQ-kpUA";
}

void main() async {
  final client = Client(
    url: Uri.parse("wss://rtc.doki.co.in/ws"),
    getToken: getToken,
    onChatMessageReceived: (ChatMessage message) {
      // print(message.toJSON());
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
    TypingStatus status = TypingStatus(
      from: "rohan",
      to: "rohan_verma__",
    );

    client.sendTypingStatus(status);

    for (int i = 0; i < 15; i++) {
      await Future.delayed(
        Duration(
          seconds: 3,
        ),
      );
      print("sending $i");
      client.sendTypingStatus(status);
    }
  } on WebSocketChannelException catch (e) {
    if (e.inner != null && e.inner is WebSocketException) {
      var err = e.inner as WebSocketException;
      print(err.httpStatusCode == HttpStatus.unauthorized);
    } else {
      print(e);
    }
  }

  // ChatMessage message = ChatMessage(
  //   from: "rohan_verma__",
  //   to: "amit",
  //   id: "some-random-id",
  //   subject: MessageSubject.text,
  //   body: "Hello from dart client",
  // );
  //
  // client.sendMessage(message);
  // client.disconnect();
}
