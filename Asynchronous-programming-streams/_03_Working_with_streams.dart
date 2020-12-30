// Stream 类有很多辅助方法，可以在 stream 上作常用的操作，这些操作和 Iterable 上的操作类似。

void main() async {
  var stream = countStream(5);
  var firstElement = await stream.first;
  print('firstElement=$firstElement');
  // 发现 stream 中最后一个匹配条件的元素
  // TODO 为什么解开下面的代码，运行会报错：
  /*
  Unhandled exception:
  Bad state: Stream has already been listened to.
  #0      _StreamController._subscribe (dart:async/stream_controller.dart:683:7)
  #1      _ControllerStream._createSubscription (dart:async/stream_controller.dart:833:19)
  #2      _StreamImpl.listen (dart:async/stream_impl.dart:475:9)
  #3      Stream.lastWhere (dart:async/stream.dart:1418:25)
  #4      main (file:///home/wangzhichao/IDEAProjects/Dart-Basics/Asynchronous-programming-streams/_03_Working_with_streams.dart:9:34)
  <asynchronous suspension>
  #5      _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:301:19)
  #6      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:168:12)
   */
//  var lastEvenNum = await stream.lastWhere((element) => element & 1 == 0);
//  print('lastEvenNum=$lastEvenNum');


  var lastEvenNum = await countStream(5).lastWhere((element) => element & 1 == 0);
  print('lastEvenNum=$lastEvenNum');
}

Stream<int> countStream(int to) async* {
  for (var i = 1; i <= to; i++) {
    Future.delayed(Duration(seconds: 1));
    yield i;
  }
}