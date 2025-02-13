import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_presence_info.freezed.dart";
part "user_presence_info.g.dart";

@freezed
class UserPresenceInfo with _$UserPresenceInfo implements BasePayload {
  const factory UserPresenceInfo({
    required String to,
    required bool online,
    required String user,
    @Default(PayloadType.userPresenceInfo) PayloadType type,
  }) = _UserPresenceInfo;

  factory UserPresenceInfo.fromJson(Map<String, dynamic> json) =>
      _$UserPresenceInfoFromJson(json);
}
