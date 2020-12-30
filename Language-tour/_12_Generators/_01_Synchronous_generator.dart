// 1, 需要懒加载一些值的序列时，考虑使用生成器函数。
// 2, Dart 有两种内置支持的生成器函数：
//    同步生成器：返回一个 Iterable 对象
//    异步生成器：返回一个 Stream 对象
// 3, 实现同步生成器函数，标记函数体为 sync*，并使用 yield 语句来传递值。
//    use the sync* keyword to mark the function as a synchronous generator
//    同步生成器和 python 中的生成器概念类似。
// 4, 对 yield 关键字的理解：
//    “返回”一个值到序列中，但是不会停止生成器函数。
// 参考：https://medium.com/@jelenaaa.lecic/what-are-sync-async-yield-and-yield-in-dart-defe57d06381
void main() {
  print('create iterator');
  var generator = naturalsTo(5);
  print(generator.runtimeType); // _SyncIterable<int>
  print('start to iterate...');
  for (var value in generator) {
    print(value);
  }
  print('end of main');
}
// 打印结果表明：
// 1, 在迭代的时候才产生值
// 2, yield 没有停止生成器函数。
/*
create iterator
_SyncIterable<int>
start to iterate...
naturalsTo start
0
1
2
3
4
naturalsTo end
end of main
 */

Iterable<int> naturalsTo(int n) sync* {
  print('naturalsTo start');
  int k = 0;
  while (k < n) yield k++;
  print('naturalsTo end');
}