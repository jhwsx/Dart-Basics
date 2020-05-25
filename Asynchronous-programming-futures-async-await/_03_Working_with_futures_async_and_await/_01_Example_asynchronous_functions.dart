/*
1, async 和 await 关键字提供了一种说明方式，用于定义异步函数并使用异步函数的结果。
2, 当使用 async 和 await 时，记住这两个基本的指导：
    要定义一个异步函数，就在函数体前加上 async 关键字；
    await 关键字仅仅作用在有 async 关键字的函数里。
3,  使用 await 关键字来得到异步表达式的 completed 结果。
4,  如果在函数里使用了 await 关键字，那么就必须在函数体前加上 async 关键字。
 */
// 从同步函数改造而来：
/*
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
 */
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is $order';
}

Future<String> fetchUserOrder() {
  // Creates a future that runs its computation after a delay.
  return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
}
// 这里把 main 函数的返回值改为 Future<void>, 是因为现在 main 是一个异步函数
// （它有 async 关键字在函数体前面），异步函数没有有用的返回值，就写成 Future<void>
Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}
