// Mixin 是什么？Mixins are a way of reusing a class’s code in multiple class hierarchies.
// 在多个类层次结构中重用类的代码的方法。
// Mixin 怎么用？使用 with 关键字，后面跟着一个或多个 mixin names。
// 参考文章：https://juejin.im/post/5bb204d3e51d450e4f38e2f6 有点老
// https://juejin.im/post/5c44382d51882523f0261bb5 比较新
void main() {
  B b = B();
  print(b.content);
  b.a();

  print('*'*30);

  D1 d1 = D1();
  d1.c();
  D2 d2 = D2();
  d2.c();
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

class D1 with C1, C2 {

}

class D2 with C2, C1 {

}