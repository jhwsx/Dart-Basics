// 如果生成器是递归的，可以使用 yield* 来提升它的性能
void main() {
  print('create generator');
  var generator = naturalsDownFrom(5);
  print(generator.runtimeType);
  print('start to iterate...');
  generator.forEach(print);
  print('end of main');
}

/*
create generator
_SyncIterable<int>
start to iterate...
generator 5 started
5
generator 4 started
4
generator 3 started
3
generator 2 started
2
generator 1 started
1
generator 0 started
generator 0 ended
generator 1 ended
generator 2 ended
generator 3 ended
generator 4 ended
generator 5 ended
end of main
 */

Iterable<int> naturalsDownFrom(int n) sync* {
  print('generator $n started');
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1); // 递归
  }
  print('generator $n ended');

}
