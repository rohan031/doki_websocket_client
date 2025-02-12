// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditMessageImpl _$$EditMessageImplFromJson(Map<String, dynamic> json) =>
    _$EditMessageImpl(
      from: json['from'] as String,
      to: json['to'] as String,
      id: json['id'] as String,
      body: json['body'] as String,
      editedOn:
          const UTCDateTimeConverter().fromJson(json['editedOn'] as String),
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.editMessage,
    );

Map<String, dynamic> _$$EditMessageImplToJson(_$EditMessageImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'id': instance.id,
      'body': instance.body,
      'editedOn': const UTCDateTimeConverter().toJson(instance.editedOn),
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
