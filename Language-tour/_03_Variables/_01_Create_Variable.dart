void main() {
  // name1 的类型被推断为 String
  var name1 = 'Bob';

  // 不限定为单一类型，使用 Object 或 dynamic。
  // 这两者有一定的区别。
  dynamic name2 = 'Bob';

  name2 = true;

  Object name3 = 'Bob';

  name3 = 1;
  // 明确地声明类型为 String
  String name4 = 'Bob';

  print(name1);
  print(name2);
  print(name3);
  print(name4);



}