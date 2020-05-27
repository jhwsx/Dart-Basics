import 'dart:math';

Future<void> main() async {
  var greetings = await greetUser();
  print(greetings);
  var byee = await sayGoodbye();
  print(byee);
}

// Part 1
addHello(String argument) {
  return 'Hello $argument';
}

// Part 2
//You can call the provided async function fetchUsername to return the username
greetUser() async {
  var username = await fetchUsername();
  return addHello(username);
}

// Part 3
//You can call the provided async function logoutUser to logout the user
Future<String> sayGoodbye() async {
  try {
    var user = await logoutUser();
    return '$user Thanks, see you next time';
  } catch (e) {
    return 'What happened? ${e.toString()}';
  }
}

// 模拟从远端获取用户名的操作
Future<String> fetchUsername() {
  var list = ["willwaywang6", "wangzhichao"];
  return Future.delayed(Duration(seconds: 1), () => list[Random().nextInt(2)]);
}

// 模拟远端退出登录的操作
Future<String> logoutUser() {
  var list = ["willwaywang6", "wangzhichao"];
  return Future.delayed(Duration(seconds: 1), () => list[Random().nextInt(3)]);
}
