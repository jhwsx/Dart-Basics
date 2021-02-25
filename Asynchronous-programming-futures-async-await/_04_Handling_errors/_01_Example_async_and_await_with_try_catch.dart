// 在 async 函数里处理错误，使用 try-catch

Future<void> main() async {
  await printOrderMessage();
}

printOrderMessage() async {
  try {
    var order = await fetchUserOrder();
    print('Awaiting user order...');
    print(order);
  } catch (err, s) {
    print('Caught error: $err\n$s');
  }
}

Future<String> fetchUserOrder() {
  return Future.delayed(
      Duration(seconds: 3), () => throw Exception('Cannot locate user order'));
}
