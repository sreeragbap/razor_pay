import 'dart:math';

String generateRandomString(int len) {
  var r = Random();
  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
  print(List.generate(len, (index) => chars[r.nextInt(chars.length)]).join());
  return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
}
