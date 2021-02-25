// 验证集合中的所有元素是否满足指定的条件。
void main() {
  // 验证是否集合中所有的元素长度都大于等于 5
  Iterable<String> items = <String>['practice', 'makes', 'perfect'];
  var allItemsLengthGreaterThanOrEqualsTo5 = isAllItemsLengthGreaterThanOrEqualsTo5(items);
  print(allItemsLengthGreaterThanOrEqualsTo5);

  // 使用 every() 方法
  var every = items.every((element) => element.length >= 5);
  print('every=$every');

  // 使用 myEvery() 扩展方法
  var myEvery = items.myEvery((element) => element.length >= 5);
  print('myEvery=$myEvery');
}

bool isAllItemsLengthGreaterThanOrEqualsTo5(Iterable<String> items) {
  for(var item in items) {
    if(item.length < 5) {
      return false;
    }
  }
  return true;
}

// 这是泛型扩展方法，厉害吧。。。
extension IterableEvery<E> on Iterable<E> {
  bool myEvery(bool test(E element)) {
    for (E element in this) {
      if (!test(element)) return false;
    }
    return true;
  }
}
