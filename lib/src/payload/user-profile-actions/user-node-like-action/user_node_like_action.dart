import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/user-profile-actions/user-node-type/user_node_type.dart';
import 'package:json_annotation/json_annotation.dart';

part "user_node_like_action.g.dart";

@JsonSerializable()
class UserNodeLikeAction implements BasePayload {
  UserNodeLikeAction({
    required this.from,
    required this.to,
    required this.isLike,
    required this.likeCount,
    required this.commentCount,
    required this.nodeId,
    required this.nodeType,
    required this.parents,
  }) : _payloadType = PayloadType.userUpdateProfile;

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String to;
  final bool isLike;
  final int likeCount;
  final int commentCount;
  final String nodeId;
  final NodeType nodeType;
  final List<UserNodeType> parents;

  factory UserNodeLikeAction.fromJson(Map<String, dynamic> json) =>
      _$UserNodeLikeActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserNodeLikeActionToJson(this);
}
