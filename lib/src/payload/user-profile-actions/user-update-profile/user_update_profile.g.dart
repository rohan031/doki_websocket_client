// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserUpdateProfileImpl _$$UserUpdateProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$UserUpdateProfileImpl(
      from: json['from'] as String,
      bio: json['bio'] as String,
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String,
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.userUpdateProfile,
    );

Map<String, dynamic> _$$UserUpdateProfileImplToJson(
        _$UserUpdateProfileImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'bio': instance.bio,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'type': _$PayloadTypeEnumMap[instance.type]!,
    };

const _$PayloadTypeEnumMap = {
  PayloadType.chatMessage: 'chat_message',
  PayloadType.typingStatus: 'typing_status',
  PayloadType.editMessage: 'edit_message',
  PayloadType.deleteMessage: 'delete_message',
  PayloadType.userSendFriendRequest: 'user_send_friend_request',
  PayloadType.userAcceptFriendRequest: 'user_accepted_friend_request',
  PayloadType.userRemovesFriendRelation: 'user_removes_friend_relation',
  PayloadType.userUpdateProfile: 'user_update_profile',
  PayloadType.userCreateRootNode: 'user_create_root_node',
  PayloadType.unknown: 'unknown',
  PayloadType.userNodeLikeAction: 'user_node_like_action',
  PayloadType.userCreateSecondaryNode: 'user_create_secondary_node',
};
