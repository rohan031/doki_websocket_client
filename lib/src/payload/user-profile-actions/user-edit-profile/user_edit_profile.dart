import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:json_annotation/json_annotation.dart';

part "user_edit_profile.g.dart";

@JsonSerializable()
class UserEditProfile implements BasePayload {
  UserEditProfile({
    required this.from,
    required this.bio,
    required this.name,
    required this.profilePicture,
  }) : _payloadType = PayloadType.userUpdateProfile;

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String name;
  final String profilePicture;
  final String bio;

  factory UserEditProfile.fromJson(Map<String, dynamic> json) =>
      _$UserEditProfileFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserEditProfileToJson(this);
}
