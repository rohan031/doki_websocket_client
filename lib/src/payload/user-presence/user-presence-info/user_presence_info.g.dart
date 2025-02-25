// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_presence_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPresenceInfoImpl _$$UserPresenceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPresenceInfoImpl(
      to: json['to'] as String,
      online: json['online'] as bool,
      user: json['user'] as String,
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.userPresenceInfo,
    );

Map<String, dynamic> _$$UserPresenceInfoImplToJson(
        _$UserPresenceInfoImpl instance) =>
    <String, dynamic>{
      'to': instance.to,
      'online': instance.online,
      'user': instance.user,
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
  PayloadType.userPresenceSubscription: 'user_presence_subscription',
  PayloadType.userPresenceInfo: 'user_presence_info',
  PayloadType.pollSubscription: 'poll_subscription',
  PayloadType.pollVotesUpdate: 'poll_votes_update',
};
