import 'package:doki_websocket_client/src/payload/payload_type.dart';

class DeleteMessage {
  DeleteMessage({
    required this.from,
    required this.to,
    required this.id,
    required this.everyone,
  }) : _payloadType = PayloadType.chatMessage;

  final PayloadType _payloadType;
  final String from;
  final String to;
  final String id;
  final bool everyone;

  static DeleteMessage fromJSON(Map<String, dynamic> json) {
    return DeleteMessage(
      from: json["from"],
      to: json["to"],
      id: json["id"],
      everyone: bool.parse(json["everyone"]),
    );
  }

  Map<String, String> toJSON() {
    return {
      "type": _payloadType.value,
      "from": from,
      "to": to,
      "id": id,
      "everyone": everyone.toString(),
    };
  }
}
