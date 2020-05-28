// 使用 takeWhile() 和 skipWhile()，来从 Iterable 里过滤元素。
// 1, takeWhile()
//    依次选择满足条件的元素，直到遇到第一个不满足的元素 x，就停止选择。
//    返回从[索引0，不满足的元素索引-1]的所有元素。
// 2, skipWhile()
//    依次跳过满足条件的元素，直到遇到第一个不满足的元素 x，就停止跳过。
//    返回[从元素 x 的索引, 最大索引]的所有元素。
void main() {
  var numbers = [1, 3, -2, 0, 4, 5];

  var numberUntilZero = numbers.takeWhile((value) => value != 0);
  print('Number until 0: $numberUntilZero'); // Number until 0: (1, 3, -2)
  var numberAfterZero = numbers.skipWhile((value) => value != 0);
  print('Number after 0: $numberAfterZero'); // Number after 0: (0, 4, 5)

  // 依次选择非负数，直到遇到第一个负数就停止选择。不包括那个负数。
  var numberUntilNegative = numbers.takeWhile((value) => !value.isNegative);
  print('numberUntilNegative: $numberUntilNegative');
}