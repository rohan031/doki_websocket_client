// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_removes_friend_relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRemovesFriendRelationImpl _$$UserRemovesFriendRelationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRemovesFriendRelationImpl(
      from: json['from'] as String,
      to: json['to'] as String,
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.userRemovesFriendRelation,
    );

Map<String, dynamic> _$$UserRemovesFriendRelationImplToJson(
        _$UserRemovesFriendRelationImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
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
