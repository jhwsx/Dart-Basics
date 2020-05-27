// 可选参数分两种：命名参数或位置参数。
// 一个可选参数要么是命名参数要么是位置参数，但不能二者兼有。
import 'package:meta/meta.dart';
void main() {
  // 使用 paramName: value 来确定命名参数
  enableFlags(bold: true, hidden: false);
  show('wang', age: 18); // 可以隔着输入命名参数
  show('wang'); // 警告：The parameter 'age' is required.

  show3('wang');
  // show3('wang', 18); // 编译报错：类型不对。不能隔着输入位置参数

  show4('wang', age: 18);

  // show5('wang', 18); // 还是不能隔着输入
}

// 使用 {param1, param2, ...} 来指定命名参数
void enableFlags({bool bold, bool hidden}) {

}
// 命名参数：@required 表示修饰的参数是强制的，必须提供一个实参过来
void show(String surname, {String name, @required int age, bool gender}) {
  print('surname=$surname, name=$name, age=$age, gender=$gender');
}

// 错误的写法示例：The required parameters are listed first, followed by any optional parameters.
//void show2( {String name, @required int age, bool gender}, String surname) {
//
//}

//  位置参数, 与命名参数的写法不同：使用[] 来包裹一系列的函数参数
void show3(String surname, [String name,  int age, bool gender]) {
  print('surname=$surname, name=$name, age=$age, gender=$gender');
}

// 给命名参数指定默认参数值
void show4(String surname, {String name, @required int age, bool gender = true}) {
  print('surname=$surname, name=$name, age=$age, gender=$gender');
}

// 给位置参数制定默认参数值
void show5(String surname, [String name = 'zhichao',  int age, bool gender]) {
  print('surname=$surname, name=$name, age=$age, gender=$gender');
}

