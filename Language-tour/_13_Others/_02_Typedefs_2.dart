// 使用了 typedef 的写法：
// 使用明显的名字，保留了类型信息。
// typedef 是函数类型的别名，给函数类型一个名字，用于声明字段或者返回值。
void main() {
  SortedCollection coll = SortedCollection(sort);
  print(coll.compare.runtimeType);
  assert(coll.compare is Function);
  assert(coll.compare is Compare);
}

typedef Compare = int Function(Object a, Object b);

class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

int sort(Object a, Object b) => 0;