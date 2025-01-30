import 'package:json_annotation/json_annotation.dart';

enum MessageSubject {
  @JsonValue('basic@text')
  text,

  @JsonValue('media@bucket_resource')
  mediaBucketResource,

  @JsonValue('media@external')
  mediaExternal,

  @JsonValue('user@location')
  userLocation,

  @JsonValue('doki@user')
  dokiUser,

  @JsonValue('doki@post')
  dokiPost,

  @JsonValue('doki@page')
  dokiPage,

  @JsonValue('doki@discussion')
  dokiDiscussion,

  @JsonValue('doki@polls')
  dokiPolls,
}
