import 'package:json_annotation/json_annotation.dart';

enum MessageSubject {
  @JsonValue('basic@text')
  text(
    value: "basic@text",
  ),

  @JsonValue('media@bucket_resource')
  mediaBucketResource(
    value: "media@bucket_resource",
  ),

  @JsonValue('media@external')
  mediaExternal(
    value: "media@external",
  ),

  @JsonValue('user@location')
  userLocation(
    value: "user@location",
  ),

  @JsonValue('doki@user')
  dokiUser(
    value: "doki@user",
  ),

  @JsonValue('doki@post')
  dokiPost(
    value: "doki@post",
  ),

  @JsonValue('doki@page')
  dokiPage(
    value: "doki@page",
  ),

  @JsonValue('doki@discussion')
  dokiDiscussion(
    value: "doki@discussion",
  ),

  @JsonValue('doki@polls')
  dokiPolls(
    value: "doki@polls",
  );

  const MessageSubject({
    required this.value,
  });

  final String value;
}
