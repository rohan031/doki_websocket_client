import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:json_annotation/json_annotation.dart';

part "typing_status.g.dart";

@JsonSerializable()
class TypingStatus implements BasePayload {
  const TypingStatus({
    required this.from,
    required this.to,
  }) : _payloadType = PayloadType.typingStatus;

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String to;

  factory TypingStatus.fromJson(Map<String, dynamic> json) =>
      _$TypingStatusFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TypingStatusToJson(this);
}
