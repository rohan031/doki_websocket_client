import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:json_annotation/json_annotation.dart';

part "user_removes_friend_relation.g.dart";

@JsonSerializable()
class UserRemovesFriendRelation implements BasePayload {
  UserRemovesFriendRelation({
    required this.from,
    required this.to,
  }) : _payloadType = PayloadType.userRemovesFriendRelation;

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String to;

  factory UserRemovesFriendRelation.fromJson(Map<String, dynamic> json) =>
      _$UserRemovesFriendRelationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserRemovesFriendRelationToJson(this);
}
