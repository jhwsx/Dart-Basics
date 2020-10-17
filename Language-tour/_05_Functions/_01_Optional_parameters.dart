// 一个函数可以有两种类型的参数：必选的或可选的。（required or optional）。两种类型都有时，必选参数在前面，可选参数在后面。
// 可选参数分两种：命名参数或位置参数。
// 一些 api —— 特别是 Flutter 的构造器 —— 仅仅使用命名参数，即便是强制要的参数。
// 一个可选参数要么是命名参数要么是位置参数，但不能二者兼有。

// 命名参数 vs 位置参数
// 命名参数声明时使用 {} 包裹，而位置参数声明时使用 [] 包裹。
// 命名参数指定默认值，就可以隔着输入命名实参了; 而位置参数只有最后一个为默认值时，才允许不输入。
// 命名参数传入实参必须带上名字，而位置参数不允许带名字。
// 命名参数可以选择任何的参数传入还是不传入，而位置参数只能选择前面的传入后面的不传入，不允许前面的不传入而后面的传入。

import 'package:meta/meta.dart';

void main() {
  // 使用 paramName: value 来确定命名参数，注意 paraName 不可以省略。
  enableFlags(bold: true, hidden: false);
  show('wang', age: 18); // 可以隔着输入命名参数
  show('wang'); // 警告：The parameter 'age' is required.

  show3('wang');
  // show3('wang', 18); // 编译报错：类型不对。不能隔着输入位置参数
  // 位置参数不能写参数名
  // show3('wang', name: 'zhichao', age: 18, gender:false); // 错误的写法

  show4('wang', age: 18);

  // show5('wang', 18); // 还是不能隔着输入

  show5('wang', 'zhichao', 18, false);

  show6('wang', 'zhichao', 18); // 最后一个有默认值，不用写了。
}

// 使用 {param1, param2, ...} 来指定命名参数
void enableFlags({bool bold, bool hidden}) {}
// 命名参数：@required 表示修饰的参数是强制的，必须提供一个实参过来
void show(String surname, {String name, @required int age, bool gender}) {
  print('show(): surname=$surname, name=$name, age=$age, gender=$gender');
}

// 错误的写法示例：The required parameters are listed first, followed by any optional parameters.
//void show2( {String name, @required int age, bool gender}, String surname) {
//
//}

//  位置参数, 与命名参数的写法不同：使用[] 来包裹一系列的函数参数
void show3(String surname, [String name, int age, bool gender]) {
  print('show3():surname=$surname, name=$name, age=$age, gender=$gender');
}

// 给命名参数指定默认参数值
void show4(String surname,
    {String name, @required int age, bool gender = true}) {
  print('show4():surname=$surname, name=$name, age=$age, gender=$gender');
}

// 给位置参数制定默认参数值
void show5(String surname,
    [String name = 'zhichao', @required int age, bool gender]) {
  print('show5():surname=$surname, name=$name, age=$age, gender=$gender');
}

void show6(String surname,
    [String name, @required int age, bool gender = true]) {
  print('show6():surname=$surname, name=$name, age=$age, gender=$gender');
}
