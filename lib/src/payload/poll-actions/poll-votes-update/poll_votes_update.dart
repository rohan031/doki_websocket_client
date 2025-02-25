import 'package:doki_websocket_client/doki_websocket_client.dart';
import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "poll_votes_update.freezed.dart";
part "poll_votes_update.g.dart";

@freezed
class PollVotesUpdate with _$PollVotesUpdate implements BasePayload {
  const factory PollVotesUpdate({
    required String from,
    required String pollId,
    required List<int> votes,
    @Default(PayloadType.pollVotesUpdate) PayloadType type,
  }) = _PollVotesUpdate;

  factory PollVotesUpdate.fromJson(Map<String, dynamic> json) =>
      _$PollVotesUpdateFromJson(json);
}
