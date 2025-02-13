// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      from: json['from'] as String,
      to: json['to'] as String,
      id: json['id'] as String,
      subject: $enumDecode(_$MessageSubjectEnumMap, json['subject']),
      body: json['body'] as String,
      replyOn: json['replyOn'] as String?,
      sendAt: const UTCDateTimeConverter().fromJson(json['sendAt'] as String),
      type: $enumDecodeNullable(_$PayloadTypeEnumMap, json['type']) ??
          PayloadType.chatMessage,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'id': instance.id,
      'subject': _$MessageSubjectEnumMap[instance.subject]!,
      'body': instance.body,
      if (instance.replyOn case final value?) 'replyOn': value,
      'sendAt': const UTCDateTimeConverter().toJson(instance.sendAt),
      'type': _$PayloadTypeEnumMap[instance.type]!,
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
