// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditMessage _$EditMessageFromJson(Map<String, dynamic> json) => EditMessage(
      from: json['from'] as String,
      to: json['to'] as String,
      id: json['id'] as String,
      body: json['body'] as String,
      editedOn: _$JsonConverterFromJson<String, DateTime>(
          json['editedOn'], const UTCDateTimeConverter().fromJson),
    );

Map<String, dynamic> _$EditMessageToJson(EditMessage instance) =>
    <String, dynamic>{
      'type': _$PayloadTypeEnumMap[instance._payloadType]!,
      'from': instance.from,
      'to': instance.to,
      'id': instance.id,
      'body': instance.body,
      'editedOn': const UTCDateTimeConverter().toJson(instance.editedOn),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

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
};
