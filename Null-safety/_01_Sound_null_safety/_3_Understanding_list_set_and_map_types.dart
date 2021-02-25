void main() {
  var nameList = <String?>['Andrew', 'Anjan', 'Anya'];
  var nameSet = <String?>{'Andrew', 'Anjan', 'Anya'};

  List<String?> nameList2 = ['Andrew', 'Anjan', 'Anya'];
  Set<String?> nameSet2 = {'Andrew', 'Anjan', 'Anya'};

  var myMap = <String, int>{'one': 1};
  // 查询一个 key 对应的 value，返回是可空的。
  // 这是为了应对 key 不存在的情形。
  var unOh = myMap['two']; // int? 类型

  // int value = <String, int>{'one': 1}['one']; // 出错了，int? 不能赋值给 int
  // 解决办法1：
  int? value1 = <String, int>{'one': 1}['one']; // 正确
  // 解决办法2：
  int value2 = <String, int>{'one': 1}['one']!; // 正确
  // 安全的解决办法3：
  int value3 = <String, int>{'one': 1}['one'] ?? 0; // 正确
}
