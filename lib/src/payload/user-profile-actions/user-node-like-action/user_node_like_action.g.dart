// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_node_like_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserNodeLikeActionImpl _$$UserNodeLikeActionImplFromJson(
        Map<String, dynamic> json) =>
    _$UserNodeLikeActionImpl(
      from: json['from'] as String,
      to: json['to'] as String,
      isLike: json['isLike'] as bool,
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      nodeId: json['nodeId'] as String,
      nodeType: $enumDecode(_$NodeTypeEnumMap, json['nodeType']),
      parents: (json['parents'] as List<dynamic>)
          .map((e) => UserNodeType.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.userNodeLikeAction,
    );

Map<String, dynamic> _$$UserNodeLikeActionImplToJson(
        _$UserNodeLikeActionImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'isLike': instance.isLike,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'nodeId': instance.nodeId,
      'nodeType': _$NodeTypeEnumMap[instance.nodeType]!,
      'parents': instance.parents,
      'type': _$PayloadTypeEnumMap[instance.type]!,
    };

const _$NodeTypeEnumMap = {
  NodeType.user: 'user',
  NodeType.post: 'post',
  NodeType.comment: 'comment',
  NodeType.discussion: 'discussion',
  NodeType.poll: 'poll',
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
