// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create_root_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCreateRootNode _$UserCreateRootNodeFromJson(Map<String, dynamic> json) =>
    UserCreateRootNode(
      from: json['from'] as String,
      id: json['id'] as String,
      nodeType: $enumDecode(_$NodeTypeEnumMap, json['nodeType']),
    );

Map<String, dynamic> _$UserCreateRootNodeToJson(UserCreateRootNode instance) =>
    <String, dynamic>{
      'type': _$PayloadTypeEnumMap[instance._payloadType]!,
      'from': instance.from,
      'id': instance.id,
      'nodeType': _$NodeTypeEnumMap[instance.nodeType]!,
    };

const _$NodeTypeEnumMap = {
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
};
