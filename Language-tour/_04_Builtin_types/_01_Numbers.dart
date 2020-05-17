// 数值类型分两种：int 和 double
// int 和 double 都是 num 的子类型
// num 里有基本运算符，以及一些数值相关方法，dart:math 库有更多。
void main() {
  // 定义整型
  var x = 1;
  var hex = 0xDEADBEEF;
  // 定义小数型
  var y = 1.1;
  var exponents = 1.42e5;
  // Dart2.1之后，整型字面量可以自动转换为小数型
  double z = 1; // 等价于 double z = 1.0;

  // 基本运算
  var a = 2;
  var b = 3;
  assert (a + b == 5);

  // 字符串与数字的相互转换

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2); // 保留 2 位小数
  assert(piAsString == '3.14');

  // int 类型里定义了位运算符
  assert((3 << 1) == 6);
  assert((3 >> 1) == 1);
  assert((3 | 4) == 7);
  assert((3 & 4) == 0 );

  // 常量
  const timeInterval = 5000;
  const speed = 3;
  const distance = timeInterval * speed;
}
