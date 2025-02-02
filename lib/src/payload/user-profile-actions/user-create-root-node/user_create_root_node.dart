import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/node_type.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:json_annotation/json_annotation.dart';

part "user_create_root_node.g.dart";

@JsonSerializable()
class UserCreateRootNode implements BasePayload {
  UserCreateRootNode({
    required this.from,
    required this.id,
    required this.nodeType,
  }) : _payloadType = PayloadType.userUpdateProfile;

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String id;
  final NodeType nodeType;

  factory UserCreateRootNode.fromJson(Map<String, dynamic> json) =>
      _$UserCreateRootNodeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserCreateRootNodeToJson(this);
}
