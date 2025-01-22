import 'dart:math';

/// generateRandomString is used to generate random string which will be used as resource for the user
String generateResource() {
  int len = 10;
  var r = Random();
  String randomString =
      String.fromCharCodes(List.generate(len, (index) => r.nextInt(33) + 89));
  return randomString;
}
