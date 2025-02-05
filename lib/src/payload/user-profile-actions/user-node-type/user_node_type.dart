import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/node_type.dart';
import 'package:json_annotation/json_annotation.dart';

part "user_node_type.g.dart";

@JsonSerializable()
class UserNodeType implements BasePayload {
  UserNodeType({
    required this.nodeId,
    required this.nodeType,
  });

  final String nodeId;
  final NodeType nodeType;

  factory UserNodeType.fromJson(Map<String, dynamic> json) =>
      _$UserNodeTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserNodeTypeToJson(this);
}
