printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
}

Future<void> main() async {
  countSeconds(4);
  await printOrderMessage();
}

void countSeconds(s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}