// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteMessageImpl _$$DeleteMessageImplFromJson(Map<String, dynamic> json) =>
    _$DeleteMessageImpl(
      from: json['from'] as String,
      to: json['to'] as String,
      id: (json['id'] as List<dynamic>).map((e) => e as String).toList(),
      everyone: json['everyone'] as bool,
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.deleteMessage,
    );

Map<String, dynamic> _$$DeleteMessageImplToJson(_$DeleteMessageImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'id': instance.id,
      'everyone': instance.everyone,
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
};
