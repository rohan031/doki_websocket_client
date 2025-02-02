import 'package:json_annotation/json_annotation.dart';

enum PayloadType {
  @JsonValue("chat_message")
  chatMessage,

  @JsonValue("typing_status")
  typingStatus,

  @JsonValue("edit_message")
  editMessage,

  @JsonValue("delete_message")
  deleteMessage,

  @JsonValue("user_send_friend_request")
  userSendFriendRequest,

  @JsonValue("user_accepted_friend_request")
  userAcceptFriendRequest,

  @JsonValue("user_removes_friend_relation")
  userRemovesFriendRelation,

  @JsonValue("user_update_profile")
  userUpdateProfile,

  @JsonValue("user_create_root_node")
  userCreateRootNode,
}

const payloadTypeMap = {
  'chat_message': PayloadType.chatMessage,
  'typing_status': PayloadType.typingStatus,
  'edit_message': PayloadType.editMessage,
  'delete_message': PayloadType.deleteMessage,
  'user_accepted_friend_request': PayloadType.userAcceptFriendRequest,
  'user_send_friend_request': PayloadType.userSendFriendRequest,
  'user_removes_friend_relation': PayloadType.userRemovesFriendRelation,
  'user_update_profile': PayloadType.userUpdateProfile,
  'user_create_root_node': PayloadType.userCreateRootNode,
};
