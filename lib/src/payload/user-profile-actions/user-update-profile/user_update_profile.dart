import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_update_profile.freezed.dart";
part "user_update_profile.g.dart";

@freezed
class UserUpdateProfile with _$UserUpdateProfile implements BasePayload {
  const factory UserUpdateProfile({
    required String from,
    required String bio,
    required String name,
    required String profilePicture,
    @Default(PayloadType.userUpdateProfile) PayloadType type,
  }) = _UserUpdateProfile;

  factory UserUpdateProfile.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateProfileFromJson(json);
}
