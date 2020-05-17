// 测试顶层函数，静态方法，实例方法是否相等
void foo() {} // 顶层函数

class A {
  static void bar() {} // 静态方法
  void baz() {} // 实例方法
}

void main() {
  var x1 = foo;
  assert(foo == x1);

  var x2 = A.bar;
  assert(A.bar == x2);

  var v = A();
  var w = A();
  var y = w;
  var x3 = w.baz;

  assert(y.baz == x3);

  assert(v.baz != w.baz);
}