// 抽象类
// 1, 抽象类不可以被实例化
// 2, 想要抽象类看上去可实例化，定义个 factory constructor。
void main() {
//  var abstractContainer = AbstractContainer(); // 编译报错：Abstract classes can't be instantiated.
  // 命名构造器也不能调用
  // AbstractClassWithFactoryConstructor.newInstance(5); // 编译报错：Abstract classes can't be instantiated.

  var abstractClassWithFactoryConstructor =
      AbstractClassWithFactoryConstructor(5);
  print(abstractClassWithFactoryConstructor.a);
  abstractClassWithFactoryConstructor.abstractMethod();
}

abstract class AbstractContainer {
  void updateChildren();
}

abstract class AbstractClassWithFactoryConstructor {
  num a;

  void abstractMethod();

  AbstractClassWithFactoryConstructor.newInstance(this.a);

  factory AbstractClassWithFactoryConstructor(num a) {
    return AbstractClassImpl.newInstance(a);
  }
}

class AbstractClassImpl extends AbstractClassWithFactoryConstructor {
  AbstractClassImpl.newInstance(num a) : super.newInstance(a);

  @override
  void abstractMethod() {
    print("AbstractClassImpl abstractMethod()");
  }
}
