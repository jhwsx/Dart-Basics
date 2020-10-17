// 构造器
// 1, 使用构造器来创建一个对象;
// 2, 构造器的名字要么是类名要么是类名.标识符;
// 3, 如果没有自定义构造器，就有一个默认的无参数的构造器；
// 4, 如果有自定义构造器，则默认的无参数构造器无效；
// 5, 构造方法不能重载。
// 6, 一些类可以提供常量构造器，使用常量构造器可以创建一个编译器常量。
//    做法：在构造器名字前加 const 关键字，把字段写成 final 的。
//          在创建编译器常量时，调用构造器前面加 const。
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
  const immutablePoint1 = const ImmutablePoint(1, 1);
  const immutablePoint2 = const ImmutablePoint(1, 1);
  print('immutablePoint1.hashCode = ' + immutablePoint1.hashCode.toString());
  print('immutablePoint2.hashCode = ' + immutablePoint2.hashCode.toString()); // hashCode 是一样的
  print('immutablePoint1 = $immutablePoint1, immutablePoint2 = $immutablePoint2');
  assert(identical(immutablePoint1, immutablePoint2)); // 一样的。

  // 在常量上下文里，构造器前的 const 可以省略
  const pointAndLine1 = {
    'point': const [const ImmutablePoint(0, 0)],
    'line' : const [const ImmutablePoint(1, 1), const ImmutablePoint(2, 2)]
  };
  // 省略 const 的写法：
  const pointAndLine2 = {
    'point': [ImmutablePoint(0, 0)],
    'line': [ImmutablePoint(1, 1), ImmutablePoint(2, 2)]
  };
  // 但是如果没有常量上下文，省略了 const，就不能创建编译器常量了
  var pointAndLine3 = {
    'point': [ImmutablePoint(0, 0)],
    'line': [ImmutablePoint(1, 1), ImmutablePoint(2, 2)]
  };
  assert(identical(pointAndLine1, pointAndLine2)); // pass
  assert(!identical(pointAndLine2, pointAndLine3)); // pass
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
  final int x; // 如果不加final，那么编译报错：Can't define a const constructor for a class with non-final fields.
  final int y;

  const ImmutablePoint(this.x, this.y);
}
