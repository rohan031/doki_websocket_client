import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:json_annotation/json_annotation.dart';

typedef PayloadDecoder = BasePayload Function(Map<String, dynamic> json);

enum PayloadType {
  @JsonValue("chat_message")
  chatMessage(
    value: "chat_message",
    decoder: ChatMessage.fromJson,
    type: ChatMessage,
  ),

  @JsonValue("typing_status")
  typingStatus(
    value: "typing_status",
    decoder: TypingStatus.fromJson,
    type: TypingStatus,
  ),

  @JsonValue("edit_message")
  editMessage(
    value: "edit_message",
    decoder: EditMessage.fromJson,
    type: EditMessage,
  ),

  @JsonValue("delete_message")
  deleteMessage(
    value: "delete_message",
    decoder: DeleteMessage.fromJson,
    type: DeleteMessage,
  ),

  @JsonValue("user_send_friend_request")
  userSendFriendRequest(
    value: "user_send_friend_request",
    decoder: UserSendFriendRequest.fromJson,
    type: UserSendFriendRequest,
  ),

  @JsonValue("user_accepted_friend_request")
  userAcceptFriendRequest(
    value: "user_accepted_friend_request",
    decoder: UserAcceptFriendRequest.fromJson,
    type: UserAcceptFriendRequest,
  ),

  @JsonValue("user_removes_friend_relation")
  userRemovesFriendRelation(
    value: "user_removes_friend_relation",
    decoder: UserRemovesFriendRelation.fromJson,
    type: UserRemovesFriendRelation,
  ),

  @JsonValue("user_update_profile")
  userUpdateProfile(
    value: "user_update_profile",
    decoder: UserUpdateProfile.fromJson,
    type: UserUpdateProfile,
  ),

  @JsonValue("user_create_root_node")
  userCreateRootNode(
    value: "user_create_root_node",
    decoder: UserCreateRootNode.fromJson,
    type: UserCreateRootNode,
  ),

  @JsonValue("unknown")
  unknown(
    value: "unknown",
    decoder: null,
    type: BasePayload,
  );

  const PayloadType({
    required this.value,
    required this.decoder,
    required this.type,
  });

  final String value;
  final PayloadDecoder? decoder;
  final Type type;

  // factory constructor to return enum
  factory PayloadType.fromValue(String value) {
    for (var type in PayloadType.values) {
      if (type.value == value) return type;
    }
    return PayloadType.unknown;
  }
}
