import 'package:json_annotation/json_annotation.dart';

enum NodeType {
  @JsonValue("user")
  user,

  @JsonValue("post")
  post,

  @JsonValue("comment")
  comment,

  @JsonValue("discussion")
  discussion,

  @JsonValue("poll")
  poll,
}
