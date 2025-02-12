import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_removes_friend_relation.freezed.dart";
part "user_removes_friend_relation.g.dart";

@freezed
class UserRemovesFriendRelation
    with _$UserRemovesFriendRelation
    implements BasePayload {
  const factory UserRemovesFriendRelation({
    required String from,
    required String to,
    @Default(PayloadType.userRemovesFriendRelation) PayloadType type,
  }) = _UserRemovesFriendRelation;

  factory UserRemovesFriendRelation.fromJson(Map<String, dynamic> json) =>
      _$UserRemovesFriendRelationFromJson(json);
}
