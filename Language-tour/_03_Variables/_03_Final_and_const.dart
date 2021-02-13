void main() {
  final name = 'Bob';
  final String nickname = 'Bobby';

  // name = 'Alice'; // 编译报错：'name', a final variable, can only be set once.

  const age = 10;
  const double salary = 20.5;
  // age = 11; // Constant variables can't be assigned a value.

  const x = 100000;
  const double atm = 1.01325 * x; // 这种也是常量，因为这是常量 x 的算术运算结果。

  final yy = 6;
  // const zz = yy; // 报错：因为 final 的 yy 是运行时才确定的值，而 zz 是编译期常量，不能拿后面才可以确定的 yy 给 zz 赋值。

  final array1 = [1];
  array1[0] = 1; // ok
  const array2 = [1];
  // array2[0] = 1; // 报错，Unsupported operation: Cannot modify an unmodifiable list
  // const 不仅仅用于声明常量变量，也可以用于创建常量值，还有用于创建常量的构造器
  // 任何变量都可以有一个常量值。
  final fo = [];
  fo.add(1);
  var foo = const []; // 含义：foo 变量指向了空的列表常量。foo 的类型被推断为 List<dynamic>, 因为这里没有元素。
  var foo1 = const [1]; // 含义：foo1 变量指向了列表常量。foo1 的类型被推断为 List<int>, 因为这里有元素。
  final bar = const [];// 含义：一个不可变的 bar 变量指向了空的列表常量。注意 bar 被 final 修饰了，它不可以再指向其他值了。
  const baz = []; // 这是一种省略写法，Equivalent to `const []`，等价于下面的一行。
  const baz1 = const [];
  baz1.add(1);
  foo = [1, 2, 3]; // 虽然 foo 曾经指向了 const 的值，但是 foo 不是 final 的，也不是 const 的，所以可以改变它的值。
  // baz = [42]; // Error：Constant variables can't be assigned a value.
  // bar = [1]; // 编译报错：'bar', a final variable, can only be set once.


  // As of Dart 2.5, you can define constants that use type checks and casts
  // (is and as), collection if, and spread operators (... and ...?)
  const Object i = 3;
  const list = [i as int]; // 使用类型转换
  const map = {if (i is int) i: "int"};
  const set = {if (list is List<int>) ...list};
  print('map=$map');
  print('set=$set');
}
final topLevelVariable = 6;
class Test {
  final a = 5;
  // const b = 6; // Only static fields can be declared as const.
  static const b = 6; // ok
  final c;
  Test(this.c) {
  }
}
// 1，如果不打算改变一个变量，使用 final 或 const，要么替换掉 var 要么加在类型的前面。
// 2，一个 final 变量只可以被设置一次; 一个 const 变量是一个编译期常量。 const 变量隐含是 final 的 。
// 3，一个 final 的顶层或类变量在第一次被使用的时候初始化
// 4, 实例变量可以是 final 的但不可以是 const 的。final 的实例变量必须在构造方法之前被初始化，要么在声明的地方，
// 要么通过构造参数，要么在构造器的初始化列表。
// 5，如果 const 变量在类级别，把它标记为 static const。



















