import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/utils/json_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part "user_send_friend_request.g.dart";

@JsonSerializable()
class UserSendFriendRequest implements BasePayload {
  UserSendFriendRequest({
    required this.from,
    required this.to,
    required this.addedOn,
  })  : _payloadType = PayloadType.userSendFriendRequest,
        requestedBy = from,
        _status = "PENDING";

  @JsonKey(includeToJson: true, name: "type")
  final PayloadType _payloadType;
  final String from;
  final String to;
  @JsonKey(includeToJson: true)
  final String requestedBy;
  final String _status;

  @UTCDateTimeConverter()
  final DateTime addedOn;

  String get status => _status;

  factory UserSendFriendRequest.fromJson(Map<String, dynamic> json) =>
      _$UserSendFriendRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserSendFriendRequestToJson(this);
}
