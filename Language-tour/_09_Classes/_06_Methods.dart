// 方法
// 1, 实例方法：可以获取实例变量和 this。
// 2, getter 和 setter 方法：每一个实例变量都隐含有一个 getter 方法，和一个setter（依情况而定）
// 通过实现 getter 和 setter，来创建属性，使用 get 和 set 关键字。
// getter 和 setter 方法，不管是隐含地，还是自己实现的，在客户端都看不到任何方法的痕迹。
// 3, 抽象方法：实例方法， getter 和 setter 方法都可以是抽象的，定义一个接口由其他类来实现它。
// 抽象方法仅可以存在于抽象类中。抽象方法前没有 abstract 关键字。abstract 关键字用于修饰类。
import 'dart:math';

void main() {
  var point = Point(1, 1);
  var other = Point(2, 3);
  var distanceTo = point.distanceTo(other);
  print(distanceTo);

  var rect = Rectangle(3, 4, 20, 15);
  assert (rect.right == 23);
  assert (rect.bottom == 19);
  rect.right = 22;
  assert (rect.left == 2);
  rect.bottom = 16;
  assert (rect.top == 1);

  EffectiveDoer effectiveDoer = new EffectiveDoer();
  effectiveDoer.doSomething();
  
  var list = <int>[1,2,3];
  var reduce = list.reduce((value, element) => value + element);
  print(reduce);
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  num distanceTo(Point other)  {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // 检查属性值是否有效
  set _left(num value) {
    if (value >= 0) {
      left = value;
    }
  }

  // 定义两个计算属性：right 和 bottom
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

abstract class Doer {
  /*abstract*/ void doSomething(); // 不可以加 abstract， 因为 Members of classes can't be declared to be 'abstract'.
}

class EffectiveDoer extends Doer {
  @override
  void doSomething() {
    print('Practice makes perfect.');
  }

}

class ShoppingCart {
  List<double> _prices = [];

  double get total => _prices.fold(0, (e, t) => e + t);

  double get total2 => _prices.reduce((value, element) => value + element);
  set prices(List<double> value) {
    if (value.any((p) => p < 0)) {
      throw Exception();
    }

    _prices = value;
  }
}