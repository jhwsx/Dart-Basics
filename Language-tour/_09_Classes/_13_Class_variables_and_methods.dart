// 类变量和类方法：
// 1, 使用 static 关键字来实现类范围的变量和方法;
// 2, 静态变量直到他们被使用时才会被初始化;
// 3, 静态方法不能操作在实例上，因此不能获取 this。
// 4, 考虑用顶层函数代替静态方法，这样可以更通用或更广泛使用。
// 5, 可以使用静态方法作为编译期常量。例如，把静态方法作为参数传递给 const 的构造函数。
import 'dart:math';

void main() {
  assert(Queue.initialCapacity == 16);

  print('*' * 30);

  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  print(distance);

  const immutableClass1 = const ImmutalbeClass(1, ImmutalbeClass.staticMethod);
  const immutableClass2 = const ImmutalbeClass(1, ImmutalbeClass.staticMethod);
  assert(identical(immutableClass1, immutableClass2));

}
class Queue {
  static const initialCapacity = 16;
}

class Point {
  double x, y;
  Point(this.x, this.y);

  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class ImmutalbeClass {
  final int value;
  // 静态方法作为参数传递给 const 的构造函数
  const ImmutalbeClass(this.value, staticMethod);

  static int staticMethod() {
    return 100;
  }
}