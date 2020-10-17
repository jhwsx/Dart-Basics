// Dart 的 set：元素是无序的，唯一的。
// Set 类型
void main() {
  // Dart 推断 cities 的类型是 Set<String>
  var cities = {'beijing', 'shanghai', 'guangzhou', 'shenzhen'};

  // cities.add(1314); // 编译报错：The argument type 'int' can't be assigned to the parameter type 'String'.

  Set<String> lanuages = {'Java', 'Dart', 'Kotlin', 'C'};

  // 创建一个空的 set
  var names1 = <String>{}; // 在 {} 之前写类型参数
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  // 添加元素
  var elements = <String>{};
  elements.add('hello');
  elements.addAll(cities);
  assert(elements.length == 5);

  // 创建编译期常量的 set
  final constantSet = const {'a', 'b', 'c', 'd'};

  // As of Dart 2.3, sets support spread operators (... and ...?) and collection ifs and fors, just like lists do.
  var set1 = {1, 2, 3};
  var set2 = {0, ...set1};
  assert(set2.length == 4);

  var set3;
  var set4 = {1, 2, 3, ...?set3};
  assert(set4.length == 3);

  var isFruit = false;
  var fruits = {'Apple', 'Banana', 'Orange', if (isFruit) 'Car'};
  assert(fruits.length == 3);
  print(fruits);

  var setOfInts = {1, 2, 3};
  var setOfStrings = [
    '#0',
    for (var i in setOfInts) '#$i'
  ];
  assert(setOfStrings[1] == '#1');
  assert(setOfStrings.length == 4);
}
