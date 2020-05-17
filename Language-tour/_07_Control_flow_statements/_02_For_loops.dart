void main() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  assert(message.toString() == 'Dart is fun!!!!!');

  // Closures inside of Dart’s for loops capture the value of the index,
  // avoiding a common pitfall found in JavaScript.
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c()); // 打印 0 1
  print("-" * 10 + 'divider' + "-"* 10);
  // for in 格式的循环
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x);
  }
}