Future<void> fetchUserOrder() {
  // 想象下面的函数是在从服务端或者数据库中获取用户信息。
  return Future.delayed(Duration(seconds: 3), () => print('Large Latte'));
}

void main() {
  fetchUserOrder();
  print('Fetch user order...');
}