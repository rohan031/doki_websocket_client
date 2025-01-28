// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteMessage _$DeleteMessageFromJson(Map<String, dynamic> json) =>
    DeleteMessage(
      from: json['from'] as String,
      to: json['to'] as String,
      id: (json['id'] as List<dynamic>).map((e) => e as String).toList(),
      everyone: const BoolConverter().fromJson(json['everyone'] as String),
    );

Map<String, dynamic> _$DeleteMessageToJson(DeleteMessage instance) =>
    <String, dynamic>{
      'type': _$PayloadTypeEnumMap[instance._payloadType]!,
      'from': instance.from,
      'to': instance.to,
      'id': instance.id,
      'everyone': const BoolConverter().toJson(instance.everyone),
    };

const _$PayloadTypeEnumMap = {
  PayloadType.chatMessage: 'chat_message',
  PayloadType.typingStatus: 'typing_status',
  PayloadType.editMessage: 'edit_message',
  PayloadType.deleteMessage: 'delete_message',
};
