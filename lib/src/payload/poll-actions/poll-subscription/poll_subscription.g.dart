// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollSubscriptionImpl _$$PollSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$PollSubscriptionImpl(
      from: json['from'] as String,
      pollId: json['pollId'] as String,
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.pollSubscription,
    );

Map<String, dynamic> _$$PollSubscriptionImplToJson(
        _$PollSubscriptionImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'pollId': instance.pollId,
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
