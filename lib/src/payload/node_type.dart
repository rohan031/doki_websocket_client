import 'package:json_annotation/json_annotation.dart';

enum NodeType {
  @JsonValue("post")
  post,

  @JsonValue("comment")
  comment,

  @JsonValue("discussion")
  discussion,
}
