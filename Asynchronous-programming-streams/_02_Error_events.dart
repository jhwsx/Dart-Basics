// Error 事件
// 1, Streams 可以传递错误事件，就像它传递数据事件一样。
// 2, 大多数 streams 在第一个错误事件后就会停止，但是可能有 streams 可以传递超过一个错误，
// 可能有 streams 可以在一个错误事件后传递更多的数据事件。
// 3, 当读到一个使用 await for 的 stream 时，错误是由循环语句抛出的。这也会终止循环。可以
// 使用 try-catch 来捕获错误。

Future<void> main() async {
  var stream = countStream(5);
  var sum = await sumStream(stream);
  print(sum);
}

// sumStream
Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  try {
    await for (var value in stream) {
      sum += value;
    }
  } catch (e) {
    print('Exception: ${e.toString()}');
    return -1;
  }
  return sum;
}

// countStream
Stream<int> countStream(int to) async* {
  for (var i = 1; i <= to; i++) {
    Future.delayed(Duration(seconds: 1));
    if (i % 2 != 0) {
      throw new Exception('Big bang');
    }
    yield i;
  }
}