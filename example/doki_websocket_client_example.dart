import 'dart:io';

import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/user-profile-actions/user-create-root-node/user_create_root_node.dart';
import 'package:doki_websocket_client/src/payload/user-profile-actions/user-update-profile/user_update_profile.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<String> getToken() async {
  return "your-token-here";
}

void main() async {
  final client = Client(
    url: Uri.parse("ws://localhost:8080/ws"),
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
    onUserSendFriendRequest: (UserSendFriendRequest request) {
      print("user send request");
      print(request.toJson());
    },
    onUserAcceptFriendRequest: (UserAcceptFriendRequest request) {
      print("user accepts request");
      print(request.toJson());
    },
    onUserRemovesFriendRelation: (UserRemovesFriendRelation relation) {
      print("user removes friend relation");
      print(relation.toJson());
    },
    onUserCreateRootNode: (UserCreateRootNode payload) {
      print(payload.toJson());
    },
    onUserUpdateProfile: (UserUpdateProfile payload) {
      print(payload.toJson());
    },
  );

  try {
    await client.connect();
    TypingStatus status = TypingStatus(
      from: "rohan",
      to: "rohan_verma__",
    );

    client.sendTypingStatus(status);
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
