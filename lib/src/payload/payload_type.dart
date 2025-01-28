import 'package:json_annotation/json_annotation.dart';

enum PayloadType {
  @JsonValue("chat_message")
  chatMessage,

  @JsonValue("typing_status")
  typingStatus,

  @JsonValue("edit_message")
  editMessage,

  @JsonValue("delete_message")
  deleteMessage;
}

const payloadTypeMap = {
  'chat_message': PayloadType.chatMessage,
  'typing_status': PayloadType.typingStatus,
  'edit_message': PayloadType.editMessage,
  'delete_message': PayloadType.deleteMessage,
};
