import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "delete_message.freezed.dart";
part "delete_message.g.dart";

@freezed
class DeleteMessage with _$DeleteMessage implements BasePayload {
  const factory DeleteMessage({
    required String from,
    required String to,
    required List<String> id,
    @Default(PayloadType.deleteMessage) PayloadType type,
  }) = _DeleteMessage;

  factory DeleteMessage.fromJson(Map<String, dynamic> json) =>
      _$DeleteMessageFromJson(json);
}
