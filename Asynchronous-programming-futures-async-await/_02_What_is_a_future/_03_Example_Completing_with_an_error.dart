Future<void> fetchUserOrder() {
  // 想象下面的函数是在获取用户信息，但是报错了。
  return Future.delayed(Duration(seconds: 3), () => throw Exception(
    'Logout failed: user ID is invalid'
  ));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
}