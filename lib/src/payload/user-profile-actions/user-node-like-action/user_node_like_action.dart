import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_node_like_action.freezed.dart";
part "user_node_like_action.g.dart";

@freezed
class UserNodeLikeAction with _$UserNodeLikeAction implements BasePayload {
  const factory UserNodeLikeAction({
    required String from,
    required String to,
    required bool isLike,
    required int likeCount,
    required int commentCount,
    required String nodeId,
    required NodeType nodeType,
    required List<UserNodeType> parents,
    @Default(PayloadType.userNodeLikeAction) PayloadType type,
  }) = _UserNodeLikeAction;

  factory UserNodeLikeAction.fromJson(Map<String, Object?> json) =>
      _$UserNodeLikeActionFromJson(json);
}
