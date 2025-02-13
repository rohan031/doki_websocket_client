import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_presence_subscription.freezed.dart";
part "user_presence_subscription.g.dart";

@freezed
class UserPresenceSubscription
    with _$UserPresenceSubscription
    implements BasePayload {
  const factory UserPresenceSubscription({
    required String from,
    required bool subscribe,
    required String user,
    @Default(PayloadType.userPresenceSubscription) PayloadType type,
  }) = _UserPresenceSubscription;

  factory UserPresenceSubscription.fromJson(Map<String, dynamic> json) =>
      _$UserPresenceSubscriptionFromJson(json);
}
