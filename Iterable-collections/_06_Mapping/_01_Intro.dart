// map()
// 把一个函数应用于每一个元素，用新的元素替代每个元素。
// 生成了一个新的 Iterable。
// map() 返回一个 lazy Iterable，意思是仅仅当迭代元素时提供的函数才会被调用。
void main() {
  Iterable<int> numbers = [1, 2, 3, 4, 5, 6];
  print('numbers.hashCode=${numbers.hashCode}');
  // 把元素乘以 10
  Iterable<int> output1 = numbers.map((e) => e * 10);
  print('output1.hashCode=${output1.hashCode}');
  print('numbers: $numbers');
  print('output1: $output1');
  // 把元素类型进行转换
  Iterable<String> output2 = numbers.map((e) => e.toString());
  print('output2.hashCode=${output2.hashCode}');
  print('output2: $output1');
}
