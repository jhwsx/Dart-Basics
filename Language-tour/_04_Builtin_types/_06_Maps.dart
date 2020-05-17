// Map 类型
void main() {
  // Dart 类型推断 goods 是 Map<String, int>
  var goods = {"apple": 8, 'banana': 3, 'pear': 4, 'orange': 4};
  Map<String, int> goods2 = {"apple": 8, 'banana': 3, 'pear': 4, 'orange': 4};

  // 通过 Map 构造器创建 Map 对象
  var grades = Map();
  grades['math'] = 100;
  grades['chinese'] = 100;
  grades['english'] = 0;

  //  As of Dart 2, the new keyword is optional.
  var students = new Map();

  // 添加一个 key value
  goods['watermelon'] = 10;

  // 获取一个值
  assert(goods['apple'] == 8);
  assert(goods['car'] == null); // car 不是 goods 的一个key，所以返回是 null。

  // 获取长度
  assert(goods.length == 5);

  // To create a map that’s a compile-time constant, add const before the map literal:
  final constantMap = const {"allen": true, 'lily': false};
  // constantMap['tom'] = true; // Unsupported operation: Cannot set value in unmodifiable Map

  // As of Dart 2.3, maps support spread operators (... and ...?) and collection if and for, just like lists do.
  var map1 = {"apple": 8, "orange": 2};
  var map2 = {"banana": 3, ...map1};
  assert(map2.length == 3);

  var map3;
  var map4 = {"rice": 3, "noodle": 2, "bread": 1, ...?map3};
  assert(map4.length == 3);

  var isNeed = false;
  var map5 = {"car": 200000, "bike": 100, if (isNeed) "plance": 1};
  assert(map5.length == 2);

  var map6 = {for (var i = 0; i < 5; i++) "key$i": "value$i"};
  assert(map6.length == 5);
}
