import 'dart:math';

Future<void> main() async {
  var username = await changeUsername();
  print(username);
}

Future<String> changeUsername() async {
  try {
    return await fetchNewUsername();
  } catch (err) {
    return err.toString();
  }
}

// 模拟从远端获取新的用户名
Future<String> fetchNewUsername() {
  return Future.delayed(
      Duration(seconds: 5),
      () => Random().nextBool()
          ? 'willwaywang6'
          : throw Exception('Server error'));
}
