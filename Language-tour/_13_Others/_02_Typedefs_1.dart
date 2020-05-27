// 不使用 typedef 的写法
// 缺点：当把 f 赋值给 compare 时，类型信息丢失了。
// 实际上，f 的类型是 (Object, Object) -> int, 但是
// compare 的类型仅知道是个 Funtion。
void main() {
  SortedCollection coll = SortedCollection(sort);
  assert(coll.compare is Function);
  print(coll.compare.runtimeType);
}

class SortedCollection {
  Function compare;
  SortedCollection(int f(Object a, Object b)) {
    compare = f;
  }
}

int sort(Object a, Object b) => 0;