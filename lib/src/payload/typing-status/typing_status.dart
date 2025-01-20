import 'dart:convert';

import 'package:doki_websocket_client/src/payload/payload_type.dart';

class TypingStatus {
  const TypingStatus({
    required this.from,
    required this.to,
  }) : _payloadType = PayloadType.typingStatus;

  final PayloadType _payloadType;
  final String from;
  final String to;

  static TypingStatus fromJSON(Map<String, dynamic> json) {
    return TypingStatus(
      from: json["from"],
      to: json["to"],
    );
  }

  String toJSON() {
    return jsonEncode({
      "type": _payloadType.value,
      "from": from,
      "to": to,
    });
  }
}
