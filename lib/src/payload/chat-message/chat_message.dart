import 'dart:convert';

import 'package:doki_websocket_client/src/payload/message-subject/message_subject.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';

class ChatMessage {
  ChatMessage({
    required this.from,
    required this.to,
    required this.id,
    required this.subject,
    required this.body,
  })  : _payloadType = PayloadType.chatMessage,
        sendAt = DateTime.now();

  const ChatMessage._internal({
    required this.from,
    required this.to,
    required this.id,
    required this.subject,
    required this.body,
    required this.sendAt,
  }) : _payloadType = PayloadType.chatMessage;

  final PayloadType _payloadType;
  final String from;
  final String to;
  final String id;
  final MessageSubject subject;
  final String body;
  final DateTime sendAt;

  static ChatMessage fromJSON(Map<String, dynamic> json) {
    return ChatMessage._internal(
      from: json["from"],
      to: json["to"],
      id: json["id"],
      subject: MessageSubjectExtensions.fromValue(json["subject"]),
      body: json["body"],
      sendAt: DateTime.parse(json["sendAt"]),
    );
  }

  String toJSON() {
    return jsonEncode({
      "type": _payloadType.value,
      "from": from,
      "to": to,
      "id": id,
      "subject": subject.value,
      "body": body,
      "sendAt": sendAt.toUtc().toIso8601String(),
    });
  }

  ChatMessage updatedMessage({required String body}) {
    return ChatMessage(
      from: from,
      to: to,
      id: id,
      subject: subject,
      body: body,
    );
  }
}
