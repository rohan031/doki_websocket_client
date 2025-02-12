// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create_root_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCreateRootNodeImpl _$$UserCreateRootNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCreateRootNodeImpl(
      from: json['from'] as String,
      id: json['id'] as String,
      nodeType: $enumDecode(_$NodeTypeEnumMap, json['nodeType']),
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.userCreateRootNode,
    );

Map<String, dynamic> _$$UserCreateRootNodeImplToJson(
        _$UserCreateRootNodeImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'id': instance.id,
      'nodeType': _$NodeTypeEnumMap[instance.nodeType]!,
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
};
