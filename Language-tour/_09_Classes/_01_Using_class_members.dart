// 1, Dart 是一门有类和基于 mixin 的继承的面向对象语言。
// 2, 每个对象都是一个类的实例，所有的类都继承于 Object 类。
// 3, 基于 mixin 的继承意思是虽然每个类（除 Object 外）只有一个超类，但是类体可以在
// 多个类的层级中被复用。
// 4, extension methods 是在不改变类或不创建子类就可以给一个类添加功能的一种方式。
void main() {
  var person = Person("wzc", 32);
  person.gender = true;
  print(person.toString());

  Person nullPerson;
  nullPerson?.gender = true; // ?. 安全调用
}

class Person {
  String name;
  int age;
  bool gender;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'Person{name: $name, age: $age, gender: $gender}';
  }
}