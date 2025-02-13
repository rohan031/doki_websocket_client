import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/user-presence/user-presence-info/user_presence_info.dart';
import 'package:doki_websocket_client/src/payload/user-presence/user-presence-subscription/user_presence_subscription.dart';
import 'package:json_annotation/json_annotation.dart';

typedef PayloadDecoder = BasePayload Function(Map<String, dynamic> json);

enum PayloadType {
  @JsonValue("chat_message")
  chatMessage(
    value: "chat_message",
    decoder: ChatMessage.fromJson,
  ),

  @JsonValue("typing_status")
  typingStatus(
    value: "typing_status",
    decoder: TypingStatus.fromJson,
  ),

  @JsonValue("edit_message")
  editMessage(
    value: "edit_message",
    decoder: EditMessage.fromJson,
  ),

  @JsonValue("delete_message")
  deleteMessage(
    value: "delete_message",
    decoder: DeleteMessage.fromJson,
  ),

  @JsonValue("user_send_friend_request")
  userSendFriendRequest(
    value: "user_send_friend_request",
    decoder: UserSendFriendRequest.fromJson,
  ),

  @JsonValue("user_accepted_friend_request")
  userAcceptFriendRequest(
    value: "user_accepted_friend_request",
    decoder: UserAcceptFriendRequest.fromJson,
  ),

  @JsonValue("user_removes_friend_relation")
  userRemovesFriendRelation(
    value: "user_removes_friend_relation",
    decoder: UserRemovesFriendRelation.fromJson,
  ),

  @JsonValue("user_update_profile")
  userUpdateProfile(
    value: "user_update_profile",
    decoder: UserUpdateProfile.fromJson,
  ),

  @JsonValue("user_create_root_node")
  userCreateRootNode(
    value: "user_create_root_node",
    decoder: UserCreateRootNode.fromJson,
  ),

  @JsonValue("unknown")
  unknown(
    value: "unknown",
    decoder: null,
  ),

  @JsonValue("user_node_like_action")
  userNodeLikeAction(
    value: "user_node_like_action",
    decoder: UserNodeLikeAction.fromJson,
  ),

  @JsonValue("user_create_secondary_node")
  userCreateSecondaryNode(
    value: "user_create_secondary_node",
    decoder: UserCreateSecondaryNode.fromJson,
  ),

  @JsonValue("user_presence_subscription")
  userPresenceSubscription(
    value: "user_presence_subscription",
    decoder: UserPresenceSubscription.fromJson,
  ),

  @JsonValue("user_presence_info")
  userPresenceInfo(
    value: "user_presence_info",
    decoder: UserPresenceInfo.fromJson,
  );

  const PayloadType({
    required this.value,
    required this.decoder,
  });

  final String value;
  final PayloadDecoder? decoder;

  // factory constructor to return enum
  factory PayloadType.fromValue(String value) {
    for (var type in PayloadType.values) {
      if (type.value == value) return type;
    }
    return PayloadType.unknown;
  }
}
