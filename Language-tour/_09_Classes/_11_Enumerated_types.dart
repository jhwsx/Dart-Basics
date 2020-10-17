// 枚举，是一种特殊的类，用来表示固定数量的常量值。
// 1, 枚举中的每个值都有一个索引，从 0 开始
// 2, 枚举值的 index 属性可以获取索引号
// 3, 枚举名的 values 属性可以获取枚举的列表。
// 4, 枚举可以用于 switch 语句，注意: 如果没有处理所有的枚举值，那么就会有一个警告。
// 5, 枚举的限制：不可以子类化，mixin， 或者实现枚举; 不可以明显地实例化一个枚举。
void main() {
  // 枚举索引
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  // 获取枚举的列表
  var list = Color.values;
  List<Color> colors = Color.values;
  print(colors); // [Color.red, Color.green, Color.blue]

  // 枚举用于 switch 语句
  var color = Color.blue;
  switch (color) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default: // 如果没有 default， 那么有警告：Missing case clause for 'blue'.
      break;
  }
  print('*' * 30);
  // 这种都处理了，没有警告了。
  var color2 = Color.green;
  switch (color2) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    case Color.blue:
      print('Blue as sky!');
      break;
  }
}

enum Color { red, green, blue }

// 这种写法是不行的。
//enum Season {
//  spring('spring'),
//  summer('summer'),
//  autumn('autumn'),
//  winter('winter')
//}
