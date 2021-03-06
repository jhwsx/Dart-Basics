// 没有名字的函数就称为匿名函数，有时也叫做 lambda 或闭包
// 匿名函数的格式：
/*
([[Type] param1[, …]]) {
codeBlock;
};
1, 参数的类型可以省略;
2, 参数的个数可以是0 个或者多个
*/
void main() {
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  // 如果匿名函数只包含一个语句，可以使用箭头语言简写
  list.forEach(
      (item) => print('${list.indexOf(item)}: $item')
  );

  var f = () {
    print('Hello, lambda');
  }; // 是个对象，所以才可以分配给变量。
  f(); // 执行匿名函数
  print('f = ${f.runtimeType}'); // f = () => Null

  Comparator<int> comparator = (o1, o2) => o1.compareTo(o2);

  Comparator<int> comparator2 = (o1, o2) {
    print('xxxxxx');
    return o1.compareTo(o2);
  };

}