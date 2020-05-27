// 在 Dart 中，数组是 List 对象date the type to be Future<T>
void main() {
  var list = [1, 2, 3]; // Dart 推断 list 的类型是 List<int>
  List<int> _list = [1, 2, 3];

  // list.add('hello'); // 编译报错：The argument type 'String' can't be assigned to the parameter type 'int'.

  assert(list.length == 3);

  assert(list[0] == 1);
  assert(list[1] == 2);
  assert(list[2] == 3);

  assert(list.isEmpty == false);

  // 创建一个编译期常量的list
  var constantList = const [1, 2, 3];
  // constantList[1] = -1; // 运行时报错：Unsupported operation: Cannot modify an unmodifiable list


  // Dart 2.3 introduced the spread operator (...) and the null-aware spread operator (...?),
  // which provide a concise way to insert multiple elements into a collection.

  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  assert(list2.length == 4); // 通过

  // If the expression to the right of the spread operator might be null,
  // you can avoid exceptions by using a null-aware spread operator (...?):
  var list3;
  var list4 = [0, ...?list3];
  assert(list4.length == 1); // 通过

  // Dart 2.3 also introduced collection if and collection for, which you can use
  // to build collections using conditionals (if) and repetition (for).
  var isFruit = false;
  var fruits = ['Apple', 'Banana', 'Orange', if (isFruit) 'Car'];
  assert(fruits.length == 3);

  var listOfInts = [1, 2, 3];
  var listOfStrings = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];
  assert(listOfStrings[1] == '#1');
  assert(listOfStrings.length == 4);
}