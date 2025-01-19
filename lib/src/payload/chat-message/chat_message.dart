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

  final PayloadType _payloadType;
  final String from;
  final String to;
  final String id;
  final MessageSubject subject;
  final String body;
  final DateTime sendAt;
}
