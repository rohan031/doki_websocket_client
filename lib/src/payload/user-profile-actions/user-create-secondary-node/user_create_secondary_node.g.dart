// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create_secondary_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCreateSecondaryNodeImpl _$$UserCreateSecondaryNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCreateSecondaryNodeImpl(
      from: json['from'] as String,
      to: json['to'] as String,
      nodeId: json['nodeId'] as String,
      nodeType: $enumDecode(_$NodeTypeEnumMap, json['nodeType']),
      parents: (json['parents'] as List<dynamic>)
          .map((e) => UserNodeType.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyOnNodeCreatedBy: json['replyOnNodeCreatedBy'] as String?,
      mentions: (json['mentions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.userCreateSecondaryNode,
    );

Map<String, dynamic> _$$UserCreateSecondaryNodeImplToJson(
        _$UserCreateSecondaryNodeImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'nodeId': instance.nodeId,
      'nodeType': _$NodeTypeEnumMap[instance.nodeType]!,
      'parents': instance.parents,
      if (instance.replyOnNodeCreatedBy case final value?)
        'replyOnNodeCreatedBy': value,
      if (instance.mentions case final value?) 'mentions': value,
      'type': _$PayloadTypeEnumMap[instance.type]!,
    };

const _$NodeTypeEnumMap = {
  NodeType.user: 'user',
  NodeType.post: 'post',
  NodeType.comment: 'comment',
  NodeType.discussion: 'discussion',
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
