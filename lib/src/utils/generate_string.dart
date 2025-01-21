import 'dart:math';

String generateRandomString() {
  int len = 10;
  var r = Random();
  String randomString =
      String.fromCharCodes(List.generate(len, (index) => r.nextInt(33) + 89));
  return randomString;
}
