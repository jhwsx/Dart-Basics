// for-in 循环读取元素
// 幕后，for-in 循环使用的是一个迭代器 iterator。
void main() {
  var iterable = ['Salad', 'Popcorn', 'Toast'];
  for (var element in iterable) {
    print(element);
  }
}