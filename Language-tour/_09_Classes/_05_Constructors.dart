// 构造器
// 1, 默认构造器：无参的构造器
// 2, 构造器不可以被继承
// 3, 命名构造器：使用它来实现多种构造器
// 4, 如果子类要创建一个在超类中定义的命名构造器，子类必须实现超类的命名构造器
// 默认情况下，子类的构造器调用超类的未命名的，无参的构造器。
// 在构造器类体开头调用超类的构造器。如果使用了初始化列表，它会在超类构造器调用之前执行。
// 所以，调用顺序是：1, 初始化里列表; 2, 超类的无参构造器；3, 主类的无参构造器。
// 5, 如果超类没有未命名的无参构造器，那么子类必须手动调用超类的一个构造器。
// 6, 注意：Arguments to the superclass constructor do not have access to this.
// For example, arguments can call static methods but not instance methods.
// 7, Redirecting 构造器：它的函数体是空的，后面跟着一个构造器的调用
// 8, 常量构造器：在构造器之前加 const，并且所有的实例变量都要是final的。
// 9, factory 构造器：当实现一个构造器时使用 factory 关键字，那么不总是创建一个新的实例。例如，
// 会返回一个来自缓存中的实例，或者会返回一个子类的实例。
import 'dart:math';

void main() {
  var point1 = Point1(1, 1);
  print(point1);
  print(point1.runtimeType);

  var point2 = Point2(2, 2);
  print(point2);
  print(point2.runtimeType);

  print('*' * 20 + 'divider' + '*' * 20);

  var emp = new Employee.fromJson({});

  if (emp is Person) {
    emp.firstName = 'Bob';
  }

  // 初始化列表
  // Point1.withAssert(-1, 0);

  var point3 = Point3(2, 3);
  print(point3.distanceFromOrigin);

  print('*' * 20 + 'factory constructor' + '*' * 20);
  Logger('wzc').log("It's a fine day, isn't it?");
}

class Point1 {
  num x;
  num y;

  Point1(num x, num y) {
    this.x = x;
    this.y = y;
  }

  // 命名构造器
  Point1.origin() {
    x = 0;
    y = 0;
  }

  // 使用了初始化列表，在构造器类体开始之前就设置了成员变量的值。
  Point1.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    // 注意：The right-hand side of an initializer does not have access to this.
    print('In Point.fromJson(): ($x, $y)');
  }

  // 在初始化列表中使用 assert 来验证输入
  Point1.withAssert(this.x, this.y) : assert(x >= 0) {
    print('In Point.withAssert(): ($x, $y)');
  }
}

class Point2 {
  num x;
  num y;

  // 这是一个语法糖：在构造器方法体之前就完成了赋值操作。
  Point2(this.x, this.y);
}

class Point3 {
  final num x;
  final num y;
  final num distanceFromOrigin;

  // The right-hand side of an initializer does not have access to this.
  Point3(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}

// Redirecting 构造器
class Point4 {
  num x;
  num y;

  // The main constructor of this class.
  Point4(this.x, this.y);

  // Delegates to the main constructor
  Point4.alongXAxis(num x) : this(x, 0);
}

// 常量构造器
class ImmutablePoint {
  static final ImmutablePoint origin =
      const ImmutablePoint(0, 0); // 只有加上 const，才能创建常量。
  final num
      x; // 如果不加final，则编译报错：Can't define a const constructor for a class with non-final fields.
  final num y;

  const ImmutablePoint(this.x, this.y);
}

// factory 构造器
class Logger {
  final String name;
  bool mute = false;
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}

class Man {
  Man() {
    print('In Man');
  }
}

class Person extends Man {
  String firstName;

  Person.fromJson(Map data) {
    print('In Person');
  }
}

class Employee extends Person {
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('In Employee');
  }
}