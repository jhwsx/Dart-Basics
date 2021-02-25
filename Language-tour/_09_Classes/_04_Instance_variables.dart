// 实例变量，成员变量
// 默认初始化为 null
// 所有的成员变量都会生成一个隐含的 getter 方法
// 非 final 的成员变量另外还会生成一个隐含的 setter 方法。
void main() {
  var point = Point();
  point.x = 4;
  assert(point.x == 4);
  assert(point.y == null);

  assert(point.q == 1);

  // point.q = 2; // 编译报错：'q' can't be used as a setter because it is final.
}

class Point {
  num? x ; // 没有初始化，值就是 null
  num? y;
  num z = 0; // 初始化为 0
  final num q = 1;
}
