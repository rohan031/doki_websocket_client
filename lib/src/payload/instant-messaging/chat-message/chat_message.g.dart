// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => ChatMessage(
      from: json['from'] as String,
      to: json['to'] as String,
      id: json['id'] as String,
      subject: $enumDecode(_$MessageSubjectEnumMap, json['subject']),
      body: json['body'] as String,
      sendAt: _$JsonConverterFromJson<String, DateTime>(
          json['sendAt'], const UTCDateTimeConverter().fromJson),
    );

Map<String, dynamic> _$ChatMessageToJson(ChatMessage instance) =>
    <String, dynamic>{
      'type': _$PayloadTypeEnumMap[instance._payloadType]!,
      'from': instance.from,
      'to': instance.to,
      'id': instance.id,
      'subject': _$MessageSubjectEnumMap[instance.subject]!,
      'body': instance.body,
      'sendAt': const UTCDateTimeConverter().toJson(instance.sendAt),
    };

const _$MessageSubjectEnumMap = {
  MessageSubject.text: 'basic@text',
  MessageSubject.mediaBucketResource: 'media@bucket_resource',
  MessageSubject.mediaExternal: 'media@external',
  MessageSubject.userLocation: 'user@location',
  MessageSubject.dokiUser: 'doki@user',
  MessageSubject.dokiPost: 'doki@post',
  MessageSubject.dokiPage: 'doki@page',
  MessageSubject.dokiDiscussion: 'doki@discussion',
  MessageSubject.dokiPolls: 'doki@polls',
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
