import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_create_secondary_node.freezed.dart";
part "user_create_secondary_node.g.dart";

@freezed
class UserCreateSecondaryNode
    with _$UserCreateSecondaryNode
    implements BasePayload {
  @JsonSerializable(includeIfNull: false)
  const factory UserCreateSecondaryNode({
    required String from,
    required String to,
    required String nodeId,
    required NodeType nodeType,
    required List<UserNodeType> parents,
    String? replyOnNodeCreatedBy,
    List<String>? mentions,
    @Default(PayloadType.userCreateSecondaryNode) PayloadType type,
  }) = _UserCreateSecondaryNode;

  factory UserCreateSecondaryNode.fromJson(Map<String, Object?> json) =>
      _$UserCreateSecondaryNodeFromJson(json);
}
