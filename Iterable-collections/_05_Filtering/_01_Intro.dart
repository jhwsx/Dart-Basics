// 过滤出满足特定条件的所有元素
// where() 生成的是一个新的 Iterable 对象
void main() {
  // 过滤出集合中所有的偶数
  Iterable<int> numbers = [1, 2, 3, 4, 5, 6];
  print('numbers.hashCode=${numbers.hashCode}'); // numbers.hashCode=301503873
  var evenNumbers = numbers.where((element) => element.isEven);
  print('evenNumbers.hashCode=${evenNumbers.hashCode}'); // evenNumbers.hashCode=303824992
  evenNumbers.forEach(print);
}
