// 构造器
// 如果没有自定义构造器，就有一个默认的无参数的构造器；
// 如果有自定义构造器，则默认的无参数构造器无效；
// 构造方法不能重载。

void main() {
  var p1 = Point(2, 2);
  print(p1);
  var p2 = Point.fromJson({'x': 1, 'y': 2});
  print(p2);

  // 不省略 new 关键字的写法 The new keyword became optional in Dart 2.
  var p3 = new Point(2, 3);
  print(p3);
  var p4 = new Point.fromJson({'x': 4, 'y': 5});
  print(p4);

  // 常量构造器
  const immutalbePoint1 = ImmutablePoint(1, 1);
  const immutalbePoint2 = ImmutablePoint(1, 1);
  assert(identical(immutalbePoint1, immutalbePoint2)); // 一样的。
}

class Point {
  int x;
  int y;

  Point(this.x, this.y);

  Point.fromJson(Map<String, int> map) {
    // return Point(map['x'], map['y']); // Constructors can't return values.
    this.x = map['x'];
    this.y = map['y'];
  }

  @override
  String toString() {
    return 'Point{x: $x, y: $y}';
  }
}

class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}
