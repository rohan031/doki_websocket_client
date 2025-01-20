import 'dart:convert';

import 'package:doki_websocket_client/src/payload/payload_type.dart';

class EditMessage {
  EditMessage({
    required this.from,
    required this.to,
    required this.id,
    required this.body,
  })  : _payloadType = PayloadType.chatMessage,
        editedOn = DateTime.now();

  const EditMessage._internal({
    required this.from,
    required this.to,
    required this.id,
    required this.body,
    required this.editedOn,
  }) : _payloadType = PayloadType.chatMessage;

  final PayloadType _payloadType;
  final String from;
  final String to;
  final String id;
  final String body;
  final DateTime editedOn;

  static EditMessage fromJSON(Map<String, dynamic> json) {
    return EditMessage._internal(
      from: json["from"],
      to: json["to"],
      id: json["id"],
      body: json["body"],
      editedOn: DateTime.parse(json["editedOn"]),
    );
  }

  String toJSON() {
    return jsonEncode({
      "type": _payloadType.value,
      "from": from,
      "to": to,
      "id": id,
      "body": body,
      "editedOn": editedOn.toUtc().toIso8601String(),
    });
  }
}
