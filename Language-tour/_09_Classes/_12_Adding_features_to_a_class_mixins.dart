// 1, Mixin 是什么？Mixins are a way of reusing a class’s code in multiple class hierarchies.
// 在多个类层次结构中重用类的代码的方法。
// 维基百科：在面向对象的语言中,mixins类是一个可以把自己的方法提供给其他类使用，但却不需要成为其他类的父类。
// 2, Mixin 怎么用？使用 with 关键字，后面跟着一个或多个 mixin names。
// 参考文章：https://juejin.im/post/5bb204d3e51d450e4f38e2f6 有点老
// https://juejin.im/post/5c44382d51882523f0261bb5 比较新
// 3, 创建 mixins 须知：
//  mixin 类只能继承自 Object;
//  mixin 类不能有构造函数;
//  除非你想要你的 mixin 像常规的类一样有用，使用 mixin 关键字来代替 class 关键字。
//  指定只有确定的类型可以使用 mixin（例如，这样 mixin 就可以调用它没有定义的方法了），
//  使用 on 关键字来指定需要的超类。
// 4, mixins 是怎么实现的？
// 5, mixins 的类型：它是超类的子类型，也是 mixin 类所代表类型的子类型。
void main() {
  B b = B();
  print(b.content);
  b.a();

  print('*' * 30);

  D1 d1 = D1();
  d1.c();
  D2 d2 = D2();
  d2.c();

  print('*' * 30);

  W w = W();
  w.method();

  assert(w is X == true);
  assert(w is Y == true);
  assert(w is Z == true);
  assert(w is XY == true);
  assert(w is XYZ == true);

  X x = X();
  x.method();

  XY xy = XY();
  xy.method();

  XYZ xyz = XYZ();
  xyz.method();

  print('*' * 30);

  Client().method();
}

// 类 A mixins 到 类 B
class A {
  String content = 'A class';

  void a() {
    print('a');
  }
}

class B with A {

}

// 一个类可以 mixins 多个 mixins 类
class C1 {
  void c() {
    print('c1');
  }
}

class C2 {
  void c() {
    print('c2');
  }
}
// with 后面的 mixin 类的顺序是有影响的
class D1 with C1, C2 {}

class D2 with C2, C1 {}

// 演示：mixin 类只能继承自 Object
/*
class E {

}

class F extends E {

}

class G with F { // 编译报错：The class 'F' can't be used as a mixin because it extends a class other than Object.

}*/
// 演示： mixin 类不能有构造函数
/*class H {
  H() {}
}

class I with H {} // The class 'H' can't be used as a mixin because it declares a constructor.*/

// mixin 是咋实现的？
class Z {
  method() {
    print('Z method()');
  }
}

class Y {
  method() {
    print('Y method()');
  }
}

class X {
  method() {
    print('X method()');
  }
}

/*class W extends X with Y, Z {

}*/

// 等价于下面的分解写法：
// Dart中的 Mixins 通过创建一个新类来实现，该类将 mixin 的实现层叠在一个超类之上以创建一个新类 ，
// 它不是“在超类中”，而是在超类的“顶部”，因此如何解决查找问题不会产生歧义。

class XY = X with Y;

class XYZ = XY with Z;

class W extends XYZ {

}


//-------------------------------------
class Super {
  method() {
    print('Super method()');
  }
}

class MySuper implements Super {
  @override
  method() {
    print('MySuper method()');
  }
}

mixin Mixin on Super {
  @override
  method() {
    super.method();
    print('Mixin method()');
  }
}

class Client extends MySuper with Mixin {

}