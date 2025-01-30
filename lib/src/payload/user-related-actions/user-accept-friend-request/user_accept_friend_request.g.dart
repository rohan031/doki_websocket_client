// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_accept_friend_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAcceptFriendRequest _$UserAcceptFriendRequestFromJson(
        Map<String, dynamic> json) =>
    UserAcceptFriendRequest(
      from: json['from'] as String,
      to: json['to'] as String,
      addedOn: const UTCDateTimeConverter().fromJson(json['addedOn'] as String),
    );

Map<String, dynamic> _$UserAcceptFriendRequestToJson(
        UserAcceptFriendRequest instance) =>
    <String, dynamic>{
      'type': _$PayloadTypeEnumMap[instance._payloadType]!,
      'from': instance.from,
      'to': instance.to,
      'requestedBy': instance.requestedBy,
      'addedOn': const UTCDateTimeConverter().toJson(instance.addedOn),
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
