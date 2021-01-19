// Dart 的字符串是 UTF-16 编码单元的序列。
void main() {
  // 单引号或者双引号都可以
  var s1 = 'Single quotes work well for string literals.';
  print(s1.runtimeType); // 打印：String
  var s2 = "Double quotes work just as well.";
  print(s2.runtimeType); // 打印：String
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  String text = 'Hello world';

  // 字符串模板
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' + 'which is very handy.');
  assert('That deserves all caps. ' + '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' + 'STRING INTERPOLATION is very handy!');

  var congratulations = "Happy New Year";
  var name = "willwaywang6";
  assert("Hello $name, $congratulations" == "Hello willwaywang6, Happy New Year");
  assert("Hello ${name}1, $congratulations" == "Hello willwaywang61, Happy New Year");
  assert("Hello $name, ${congratulations.toUpperCase()}!" == "Hello willwaywang6, HAPPY NEW YEAR!");
  // You can concatenate strings using adjacent string literals or the + operator:
  var words = 'Study '
      'Exercise'
      ' Conclusion';
  assert(words == 'Study Exercise Conclusion');

  var slogan = 'Faster ' + 'Higher ' + 'Stronger';
  assert(slogan == 'Faster Higher Stronger');
  // == 用于字符串，比较的是字符序列是否一样, 也就是说比较的是内容。

  // 字符串 * 运算
  var plus = '+';
  assert(plus * 5 == '+++++');

  // 多行字符串
  var m1 = '''
  Line1
  Line2
  Line3
  ''';
  var m2 = """
  ------
  ======
  ××××××
  """;
  print(m1);
  print(m2);

  // You can create a “raw” string by prefixing it with r: 不转义
  var rawStr = r'In a raw string, not even \n gets special treatment.';
  print(rawStr);

  var  path = 'C:\Users\wzc\kolin';
  print(path);

  // 字符串常量
  const NUM = 0;
  const FLAG = true;
  const NAME = "Hello World";
  // 插值表达式需要是编译期常量，等于 null，数值，String 或者 boolean。
  const validConstString = '$NUM $FLAG $NAME';
  var a = 1;
  // 这不是字符串常量。
  // const invalidConstString = '$a'; // Error：Const variables must be initialized with a constant value.
}
