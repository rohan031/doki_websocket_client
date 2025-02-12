import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/node_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_node_type.freezed.dart";
part "user_node_type.g.dart";

@freezed
class UserNodeType with _$UserNodeType implements BasePayload {
  const factory UserNodeType({
    required String nodeId,
    required NodeType nodeType,
  }) = _UserNodeType;

  factory UserNodeType.fromJson(Map<String, dynamic> json) =>
      _$UserNodeTypeFromJson(json);
}
