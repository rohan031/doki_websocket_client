// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typing_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypingStatus _$TypingStatusFromJson(Map<String, dynamic> json) => TypingStatus(
      from: json['from'] as String,
      to: json['to'] as String,
    );

Map<String, dynamic> _$TypingStatusToJson(TypingStatus instance) =>
    <String, dynamic>{
      'type': _$PayloadTypeEnumMap[instance._payloadType]!,
      'from': instance.from,
      'to': instance.to,
    };

const _$PayloadTypeEnumMap = {
  PayloadType.chatMessage: 'chat_message',
  PayloadType.typingStatus: 'typing_status',
  PayloadType.editMessage: 'edit_message',
  PayloadType.deleteMessage: 'delete_message',
  PayloadType.userSendFriendRequest: 'user_send_friend_request',
  PayloadType.userAcceptFriendRequest: 'user_accepted_friend_request',
  PayloadType.userRemovesFriendRelation: 'user_removes_friend_relation',
};
