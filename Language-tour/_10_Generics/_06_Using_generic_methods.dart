// 与 Java 不同的是，<T> 定义在紧跟着函数名的地方。
void main() {
  var list = List<int>.empty(growable: true);
  list.add(1);
  list.add(2);
  list.add(3);
  assert(first(list) == 1);
}

// 第一个 T 是返回类型
T first<T>(List<T> ts) {
  T tmp = ts[0];
  return tmp;
}
