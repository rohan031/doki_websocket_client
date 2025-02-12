import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/utils/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "edit_message.freezed.dart";
part "edit_message.g.dart";

@freezed
class EditMessage with _$EditMessage implements BasePayload {
  const factory EditMessage({
    required String from,
    required String to,
    required String id,
    required String body,
    @UTCDateTimeConverter() required DateTime editedOn,
    @Default(PayloadType.editMessage) PayloadType type,
  }) = _EditMessage;

  factory EditMessage.fromJson(Map<String, dynamic> json) =>
      _$EditMessageFromJson(json);
}
