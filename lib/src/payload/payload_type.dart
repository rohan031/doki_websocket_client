enum PayloadType {
  chatMessage,
  // groupChatMessage,
  typingStatus,
  editMessage,
  deleteMessage;
}

extension PayloadTypeValue on PayloadType {
  String get value {
    switch (this) {
      case PayloadType.chatMessage:
        return "chat_message";
      // case PayloadType.groupChatMessage:
      //   return "group_chat_message";
      case PayloadType.typingStatus:
        return "typing_status";
      case PayloadType.editMessage:
        return "edit_message";
      case PayloadType.deleteMessage:
        return "delete_message";
    }
  }

  static PayloadType? fromValue(String value) {
    for (PayloadType type in PayloadType.values) {
      if (type.value == value) {
        return type;
      }
    }
    return null;
  }
}
