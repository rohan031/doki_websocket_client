enum MessageSubject {
  text,
  mediaBucketResource,
  mediaExternal,
  userLocation,
  dokiUser,
  dokiPost,
  dokiPage,
  dokiDiscussion,
  dokiPolls,
}

extension MessageSubjectValue on MessageSubject {
  String get value {
    switch (this) {
      case MessageSubject.text:
        return "basic@text";
      case MessageSubject.mediaBucketResource:
        return "media@bucket_resource";
      case MessageSubject.mediaExternal:
        return "media@external";
      case MessageSubject.userLocation:
        return "user@location";
      case MessageSubject.dokiUser:
        return "doki@user";
      case MessageSubject.dokiPost:
        return "doki@post";
      case MessageSubject.dokiPage:
        return "doki@page";
      case MessageSubject.dokiDiscussion:
        return "doki@discussion";
      case MessageSubject.dokiPolls:
        return "doki@polls";
    }
  }
}
