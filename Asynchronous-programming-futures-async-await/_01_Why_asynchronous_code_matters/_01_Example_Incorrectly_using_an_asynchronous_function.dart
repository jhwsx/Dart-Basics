String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is $order';
}
// 这个函数是使用异步函数的错误写法
Future<String> fetchUserOrder() {
  // Creates a future that runs its computation after a delay.
  return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
}

void main() {
  print('Fetching user order...');
  print(createOrderMessage());
  // 打印结果：Your order is Instance of 'Future<String>'
  // 正确的打印结果应该是：Your order is Large Latte
}