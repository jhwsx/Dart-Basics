// 1, Iterable 是一个抽象类。创建一个 List 或者 Set，就创建了一个 Iterable 对象。
// 2, Iterable 没有 [] 操作符，但是可以用 Iterable.elementAt() 方法。
void main() {
  List<int> list = [1, 1, 2, 3];
  Set<int> set = {1, 2, 3};
  Map<int, String> map = {1: 'one', 2: 'two'};
  Iterable listIterable = list;
  for (var value in listIterable) {
    print(value);
  }
  print('-' * 30);

  Iterable mapKeyIterable = map.keys;
  for (var value in mapKeyIterable) {
    print(value);
  }
  print('-' * 30);

  Iterable mapValuesIterable = map.values;
  for (var value in mapValuesIterable) {
    print(value);
  }

  var elementAt = listIterable.elementAt(1);
  print('elementAt=$elementAt');
}