// 类变量和类方法：
// 1, 使用 static 关键字来实现类范围的变量和方法;
// 2, 静态变量直到他们被使用时才会被初始化;
// 3, 静态方法不能操作在实例上，因此不能获取 this。
// 4, 考虑用顶层函数代替静态方法，这样可以更通用或更广泛使用。
import 'dart:math';

void main() {
  assert(Queue.initialCapacity == 16);

  print('*' * 30);

  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  print(distance);
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