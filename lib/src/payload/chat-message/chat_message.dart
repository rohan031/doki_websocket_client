import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/message-subject/message_subject.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/utils/json_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part "chat_message.g.dart";

@JsonSerializable()
class ChatMessage implements BaseInstantMessagingPayload {
  ChatMessage({
    required this.from,
    required this.to,
    required this.id,
    required this.subject,
    required this.body,
    DateTime? sendAt,
  })  : _payloadType = PayloadType.chatMessage,
        sendAt = sendAt ?? DateTime.now();

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String to;
  final String id;
  final MessageSubject subject;
  final String body;

  @UTCDateTimeConverter()
  final DateTime sendAt;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);

  ChatMessage updateMessage({required String body}) {
    return ChatMessage(
      from: from,
      to: to,
      id: id,
      subject: subject,
      body: body,
    );
  }
}
