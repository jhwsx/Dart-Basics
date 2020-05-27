// Part 1
//You can call the provided async function fetchRole to return the user role
Future<String> reportUserRole() async {
  print('reportUserRole() start');
  // your implementation here
  print('start to fetchRole()');
  var userRole = await fetchRole();
  return 'User role: $userRole';
}

Future<String> fetchRole() {
  print('fecthRole()......');
  return Future.delayed(Duration(seconds: 5), () => "Hero");
}
// Part 2
// Implement reportLogins here
// You can call the provided async function fetchLoginAmount to return the number of times that the user has logged in.
reportLogins() async { // 省略了返回值类型，则为 Future<dynamic>
  print('reportLogins() start');
  print('start to fetchLoginAmount()');
  var number = await fetchLoginAmount();
  return 'Total number of logins: $number';
}

Future<int> fetchLoginAmount() {
  print('fetchLoginAmount......');
  return Future.delayed(Duration(seconds: 5), () => 3);
}

Future<void> main() async {
  print('main() start');
  print('part1 start');
  var roleReport = await reportUserRole();
  print(roleReport);
  print('part1 end');
  print('part2 start');
  var loginReport = await reportLogins();
  print(loginReport);
  print('part2 end');
  print('main() end');
}

// 1, 调用一个异步函数，如果前面不加 await 关键字，那么会立马得到一个 Future<T> 对象;
// 想要得到异步函数操作得到的值 T 的值，就必须在调用异步函数时在前面加上 await 关键字。