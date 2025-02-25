// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_votes_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollVotesUpdateImpl _$$PollVotesUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$PollVotesUpdateImpl(
      from: json['from'] as String,
      pollId: json['pollId'] as String,
      votes: (json['votes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.pollVotesUpdate,
    );

Map<String, dynamic> _$$PollVotesUpdateImplToJson(
        _$PollVotesUpdateImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'pollId': instance.pollId,
      'votes': instance.votes,
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
