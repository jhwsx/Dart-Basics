// 扩展方法：Dart2.7引入
// 1, 不能在 dynamic 类型的变量上调用扩展方法, 这是因为extension methods are resolved against the static type of the receiver.
// 扩展方法依据接收者的静态类型来被解析。
// 2, 扩展方法可以和 Dart 的类型推断一起作用
// 3, 扩展方法是静态解析的，所以扩展方法和静态方法一样快
// 4, 处理 API 冲突：扩展成员和一个接口或另一个扩展成员冲突，
// 解决办法一：改变导入冲突的扩展的方式，使用 show 或者 hide 来限制暴露的 API;
// 解决办法二：显式地应用扩展，这样扩展看起来像是一个包装类
// 如果两个扩展的名字也是一样的，就需要导入前缀了。
// 5, 实现扩展方法的语法：
// extension <extension name> on <type> {
//  (<member definition>)*
//}
// 扩展名字是为了解决可能出现的 API 冲突。
// 6, 扩展方法可以是方法，getter，setter 和 operator。扩展方法可以有静态字段和静态辅助方法。
// 7, 创建本地扩展方法：就是说只在它声明的类库中可见，要么省略掉扩展名字要么给扩展名字前加一个下划线（_）。string_local_apis.dart 例子。
// 8, 实现泛型扩展：注意加上泛型。
import 'string_apis.dart'; // NumberParsing parseInt parseDouble

// 解决办法一：改变导入冲突的扩展的方式，使用 show 或者 hide 来限制暴露的 API;
import 'string_apis_2.dart' hide NumberParsing2; // NumberParsing2 parseInt

import 'string_apis_3.dart'; // NumberParsing3 parseDouble

// 在 string_apis_3.dart 和 string_apis_4.dart 里都有一个扩展叫 NumberParsing3，也都定义一个 parseDouble 方法
// 如果都 import，不做处理，则 Error: 'NumberParsing3' is imported from both 'string_apis_3.dart' and 'string_apis_4.dart'.
import 'string_apis_4.dart' as rad; // NumberParsing3 parseDouble

import 'string_local_apis.dart';

void main() {
  print("${['42'.padLeft(5)]}"); // 左边添加5个空格
  print('42'.parseInt()); // 这是扩展函数

  print(NumberParsing('3.14').parseDouble());
  print(NumberParsing3('3.14').parseDouble());
  print(rad.NumberParsing3('3.14').parseDouble()); // 需要使用 rad 的前缀

  // 1, 不能在 dynamic 类型的变量上调用扩展方法
  dynamic d = '42';
  // d.parseInt(); // 运行报错：NoSuchMethodError: Class 'String' has no instance method 'parseInt'.

  var v = '2'; // Dart 的类型推断 v 的类型是 String
  assert (v.parseInt() == 2); // pass

  // print('42'.parseDoubleLocal()); // 在别的 dart 文件中引用不到本地扩展方法。
  // print('42'.parseDoubleLocal2()); // 在别的 dart 文件中引用不到本地扩展方法。

  var list = List.filled(0, 0, growable: true);
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  print(list.doubleLength);
  var split = list.split(2);
  print(split);
}

// 泛型扩展方法
extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;

  List<T> operator -() => reversed.toList();

  List<List<T>> split(int at) => <List<T>>[sublist(0, at), sublist(at)];
}


