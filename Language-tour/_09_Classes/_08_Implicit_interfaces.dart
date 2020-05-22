// 隐式的接口
// 1, 每一个类隐式地定义了一个接口，这个接口包含本类及其所实现接口的所有实例成员;
// 2, 若打算创建一个类 A，支持类 B 的 API 但又不继承类 B 的实现，那么类 A 应该实现类 B 接口。

void main() {
  var impostor = new Impostor();
  print(impostor.greetBob(Person('Kathy')));
  print(impostor.greetBob(Impostor()));
}

class Person {
  // 在隐式的接口
  final _name;
  // 这是构造器，它不在隐式的接口里，因为构造方法不可以被继承。
  Person(this._name);
  // 在隐式的接口
  String greet(String who) => 'Hello, $who. I am $_name';
}
// 骗子
class Impostor implements Person {
  @override
  get _name => '';

  @override
  String greet(String who) => 'Hi $who. Do you know who I am?';

  String greetBob(Person person) => greet('Bob');
}

abstract class Flyable {
  void fly();
}

abstract class SuperPower {
  void seeThrough();

  void fightQuick();
}

class Man {
  String name;
  int age;
}

class SuperMan extends Man implements Flyable, SuperPower {
  @override
  void fightQuick() {

  }

  @override
  void fly() {

  }

  @override
  void seeThrough() {

  }

}

