// 如果没有元素满足 where() 里的 predicate，那么这个方法返回一个空的 Iterable。
// 而 singleWhere(), firstWhere() 却是会报错的。
void main() {
  var evenNumbers = [1, -2, 3, 42].where((element) => element.isEven);

  for (var number in evenNumbers) {
    print('$number is even');
  }

  if (evenNumbers.any((element) => element.isNegative)) {
    print('evenNumbers contains negative numbers');
  }

  var largeNumbers = evenNumbers.where((element) => element > 1000);
  if (largeNumbers.isEmpty) {
    print('largeNumbers is empty');
  }
}