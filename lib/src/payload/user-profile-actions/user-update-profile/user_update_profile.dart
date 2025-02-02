import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:json_annotation/json_annotation.dart';

part "user_update_profile.g.dart";

@JsonSerializable()
class UserUpdateProfile implements BasePayload {
  UserUpdateProfile({
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

  factory UserUpdateProfile.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateProfileFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserUpdateProfileToJson(this);
}
