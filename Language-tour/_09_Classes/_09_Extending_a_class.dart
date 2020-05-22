// 继承一个类
// 1, 使用 extends 关键字来创建一个子类，super 关键字指向超类。
void main() {
  var human = Human();
  human.doSomething();

  print('*' * 30);
  var man = Man();
  man.doSomething();

  print('*' * 30);

  final v = Vector(2, 3);
  final w = Vector(2, 2);
  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));

  print('*' * 30);

  var a = new A();
  // a.xxx;
  a.missing(18, 'wzc');
}

class Human {
  void doSomething() {
    _eat();
    _sleep();
  }

  void _eat() {
    print('eat');
  }

  void _sleep() {
    print('sleep');
  }
}

class Man extends Human {
  @override
  void doSomething() {
    super.doSomething();
    _work();
    _exercise();
  }

  void _work() {
    print('Work hard');
  }

  void _exercise() {
    print('Play basketball');
  }
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);

  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // == 也需要覆写的，如果覆写了 ==，那么也要覆写 hashCode 的 getter 方法。
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Vector &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}
// todo 不理解
class A {
  // https://stackoverflow.com/questions/53761294/nosuchmethod-in-dart
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }

  missing(int age, String name);
}

