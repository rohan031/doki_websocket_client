import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "typing_status.freezed.dart";
part "typing_status.g.dart";

@freezed
class TypingStatus with _$TypingStatus implements BasePayload {
  const factory TypingStatus({
    required String from,
    required String to,
    @Default(PayloadType.typingStatus) PayloadType type,
  }) = _TypingStatus;

  factory TypingStatus.fromJson(Map<String, dynamic> json) =>
      _$TypingStatusFromJson(json);
}
