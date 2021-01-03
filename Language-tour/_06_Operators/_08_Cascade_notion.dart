// 级联符号：允许在同一个对象上做一系列的操作。免去了临时变量的创建，代码更加流畅。
void main() {
  var person = PersonBuilder()
      .name("zhichao")
      .age(30)
      .gender(true)
      .salary(1)
      .address('china')
      .build();

  Man man = (ManBuilder()
        ..name("zhichao") // 忽略了 name 方法的返回值。
        ..age(30)
        ..gender(true)
        ..salary(1)
        ..address('china'))
      .build();
}

class Man {
  String _name;
  int _age;
  double _salary;
  bool _gender;
  String _address;
}

class ManBuilder {
  String _name;
  int _age;
  double _salary;
  bool _gender;
  String _address;

  void name(String name) {
    this._name = name;
  }

  void age(int age) {
    this._age = age;
  }

  void salary(double salary) {
    this._salary = salary;
  }

  void gender(bool gender) {
    this._gender = gender;
  }

  void address(String address) {
    this._address = address;
  }

  Man build() {
    var man = Man();
    man._name = this._name;
    man._age = this._age;
    man._gender = this._gender;
    man._salary = this._salary;
    man._address = this._address;
    return man;
  }
}

class Person {
  String _name;
  int _age;
  double _salary;
  bool _gender;
  String _address;
}

class PersonBuilder {
  String _name;
  int _age;
  double _salary;
  bool _gender;
  String _address;

  PersonBuilder name(String name) {
    this._name = name;
    return this;
  }

  PersonBuilder age(int age) {
    this._age = age;
    return this;
  }

  PersonBuilder salary(double salary) {
    this._salary = salary;
    return this;
  }

  PersonBuilder gender(bool gender) {
    this._gender = gender;
    return this;
  }

  PersonBuilder address(String address) {
    this._address = address;
    return this;
  }

  Person build() {
    var person = Person();
    person._name = this._name;
    person._age = this._age;
    person._gender = this._gender;
    person._salary = this._salary;
    person._address = this._address;
    return person;
  }
}
