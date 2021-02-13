void main() {
  // name1 的类型被推断为 String
  var name1 = 'Bob';

  // var String name2 = 'Bob';

  var z; // z 是 dynamic 类型
  z = "wzc";
  z = 18;

  dynamic xxx;
  xxx = 1;
  xxx = true;

  var y = "wzc"; // 推断为 String 类型
  // y = 18; // 编译报错：类型不对。

  // 不限定为单一类型，使用 Object 或 dynamic。
  // 这两者有一定的区别。
  dynamic name2 = 'Bob';

  name2 = true;

  Object name3 = 'Bob';

  name3 = 1;
  // 明确地声明类型为 String
  String name4 = 'Bob';

  print(name1);
  print(name2);
  print(name3);
  print(name4);

  // dynamic vs Object：
  // `dynamic` 声明的变量可以调用推断类型上存在的方法以及根本不存在的方法，编译器都不会报错，只会在运行时去检查,
  // 而`Object` 声明的对象只能使用 `Object` 的属性与方法, 否则编译器会报错。
  dynamic t;
  Object x;

  t = 'Hello World';
  x = 'Hello World';

  print(t.length); // ok
  // print(x.length); // 编译错误： The getter 'length' isn't defined for the type 'Object'.

  print(t.foo()); // 调用一个不存在的 foo 方法，编译时不会报错，运行时会报错：NoSuchMethodError: Class 'String' has no instance method 'foo'.
}