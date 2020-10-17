// Dart 是真正面向对象的语言，甚至函数也是对象，函数的类型是 Function.
// 函数可以赋值给变量，函数也可以作为参数传递给其他函数。

void main() {
  print(isOdd.runtimeType); // (int) => bool
  Function isOddFunction = isOdd; // 函数的类型是 Function。
  print(isOddFunction.runtimeType); // (int) => bool

  var even = isEven(5); // 返回值推断为 dynamic，运行时类型就是 bool。
  print(isEven.runtimeType); // (dynamic) => dynamic
  print(even.runtimeType); // bool
}


bool isOdd(int number) {
  return number % 2 != 0;
}

// 省略了返回值和参数类型, 返回值类型当作 dynamic 处理。
isEven(number) {
  return number % 2 == 0;
}

// 如果函数仅仅包含一个表达式，可以使用简便的语法
bool isZero(int number) => number == 0;
// => expr 语法是 { return expr; } 的一种简写。=> 标记有时被成为箭头语法。