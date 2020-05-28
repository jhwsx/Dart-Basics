// 接收 stream 事件
// 1, 使用 stream 的方式：异步 for 循环（通常叫作 await for）迭代 stream 中的事件
void main() async{
  print('create stream');
  var generator = asynchronousNaturalsTo(5);
  print('start await for');
  var sum = await sumStream(generator);
  print('end await for');
  print(sum);
}

Future<int> sumStream(Stream<int> stream) async {
  print('subStream start');
  var sum = 0;
  await for (var value in stream) { // 这里就是 await for 了。
    sum += value;
    print('subStream value=$value, sum=$sum');
  }
  print('subStream end');
  return sum;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  print('waiting inside generator a bit :)');
  await Future.delayed(Duration(seconds: 5));
  print('start generating values...');
  int k = 0;
  while (k < n) {
    await Future.delayed(Duration(seconds: 1));
    print('k = $k');
    yield k++;
  }
  print('end generating values...');
}

/*
打印：
create stream
start await for
subStream start
waiting inside generator a bit :)
start generating values...
k = 0
subStream value=0, sum=0
k = 1
subStream value=1, sum=1
k = 2
subStream value=2, sum=3
k = 3
subStream value=3, sum=6
k = 4
subStream value=4, sum=10
end generating values...
subStream end
end await for
10
 */