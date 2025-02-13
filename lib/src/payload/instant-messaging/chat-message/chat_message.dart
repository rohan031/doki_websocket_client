import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/instant-messaging/message-subject/message_subject.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/utils/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "chat_message.freezed.dart";
part "chat_message.g.dart";

@freezed
class ChatMessage with _$ChatMessage implements BasePayload {
  const factory ChatMessage({
    required String from,
    required String to,
    required String id,
    required MessageSubject subject,
    required String body,
    String? replyOn,
    @UTCDateTimeConverter() required DateTime sendAt,
    @Default(PayloadType.chatMessage) PayloadType type,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
