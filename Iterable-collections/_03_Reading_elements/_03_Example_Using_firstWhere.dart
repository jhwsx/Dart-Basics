// firstWhere():找到满足特定条件的第一个元素。
// 什么是一个 predicate？
// Predicate: A function that returns true when a certain condition is satisfied.
void main() {
  Iterable iterable = ['a', 'bb', 'ccc', 'dddd', 'eeeee', 'ffffff'];
  // 使用了箭头语法: 适用于只有一个表达式
  var element1 = iterable.firstWhere((element) => element.length > 5);
  print('element1=$element1');
  // 使用了匿名函数：适用于花括号里有多行代码以及 return 语句。
  var element2 = iterable.firstWhere((element) {
    return element.length > 5;
  });
  print('element2=$element2');
  // 使用了函数引用：适用于外部传入的函数，这是高阶函数的特性。
  var element3 = iterable.firstWhere(predicate);
  print('element3=$element3');
  // 找不到时怎么办
  // 找不到时，就报错。
  try {
    var element4 = iterable.firstWhere((element) => element.length > 10);
    print('element4=$element4');
  } catch (e) {
    print(e); // Bad state: No element
  }
  // 找不到时，返回一个值，不要报错了
  var element5 = iterable.firstWhere((element) => element.length > 10, orElse: () => 'None');
  print('element5=$element5');
}

bool predicate(element) {
  return element.length > 5;
}

