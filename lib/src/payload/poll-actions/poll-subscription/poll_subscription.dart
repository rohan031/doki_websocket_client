import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "poll_subscription.freezed.dart";
part "poll_subscription.g.dart";

@freezed
class PollSubscription with _$PollSubscription implements BasePayload {
  const factory PollSubscription({
    required String from,
    required String pollId,
    required bool subscribe,
    @Default(PayloadType.pollSubscription) PayloadType type,
  }) = _PollSubscription;

  factory PollSubscription.fromJson(Map<String, dynamic> json) =>
      _$PollSubscriptionFromJson(json);
}
