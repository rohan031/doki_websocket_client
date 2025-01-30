import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/utils/json_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part "edit_message.g.dart";

@JsonSerializable()
class EditMessage implements BaseInstantMessagingPayload {
  EditMessage({
    required this.from,
    required this.to,
    required this.id,
    required this.body,
    DateTime? editedOn,
  })  : _payloadType = PayloadType.editMessage,
        editedOn = editedOn ?? DateTime.now();

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String to;
  final String id;
  final String body;
  @UTCDateTimeConverter()
  final DateTime editedOn;

  factory EditMessage.fromJson(Map<String, dynamic> json) =>
      _$EditMessageFromJson(json);

  Map<String, dynamic> toJson() => _$EditMessageToJson(this);
}
