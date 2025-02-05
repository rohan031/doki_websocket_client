import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:json_annotation/json_annotation.dart';

part "delete_message.g.dart";

@JsonSerializable()
class DeleteMessage implements BasePayload {
  DeleteMessage({
    required this.from,
    required this.to,
    required this.id,
    required this.everyone,
  }) : _payloadType = PayloadType.deleteMessage;

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String to;
  final List<String> id;
  final bool everyone;

  factory DeleteMessage.fromJson(Map<String, dynamic> json) =>
      _$DeleteMessageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeleteMessageToJson(this);
}
