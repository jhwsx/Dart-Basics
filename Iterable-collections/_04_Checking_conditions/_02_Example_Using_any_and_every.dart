// 使用 Iterable 的 any() 方法和 every() 方法
// any(): 只要有一个元素满足条件就返回 true
// every(): 只有所有的元素都满足条件就返回 true
void main() {
  var items = ['rice', 'noodle', 'egg'];
  if (items.any((element) => element.contains('g'))) {
    print('At least one element contains "g"');
  }

  if (items.every((element) => element.length >= 3)) {
    print('All elements have length >= 3');
  }

  if (items.myAny((element) => element.contains('e'))) {
    print('At least one element contains "e"');
  }
}

extension IterableAny<T> on Iterable<T> {
  bool myAny(bool test(T element)) {
    for (T element in this) {
      if (test(element)) {
        return true;
      }
    }
    return false;
  }
}
