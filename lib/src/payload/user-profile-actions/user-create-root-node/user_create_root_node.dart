import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/node_type.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_create_root_node.freezed.dart";
part "user_create_root_node.g.dart";

@freezed
class UserCreateRootNode with _$UserCreateRootNode implements BasePayload {
  const factory UserCreateRootNode({
    required String from,
    required String id,
    required NodeType nodeType,
    required List<String> usersTagged,
    @Default(PayloadType.userCreateRootNode) PayloadType type,
  }) = _UserCreateRootNode;

  factory UserCreateRootNode.fromJson(Map<String, dynamic> json) =>
      _$UserCreateRootNodeFromJson(json);
}
