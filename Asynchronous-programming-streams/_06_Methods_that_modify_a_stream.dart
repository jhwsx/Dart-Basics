// 修改 stream：基于原始的 stream，返回一个新的 stream。
// Stream<R> cast<R>();
// Stream<S> expand<S>(Iterable<S> Function(T element) convert);
// Stream<S> map<S>(S Function(T event) convert);
// Stream<T> skip(int count);
// Stream<T> skipWhile(bool Function(T element) test);
// Stream<T> take(int count);
// Stream<T> takeWhile(bool Function(T element) test);
// Stream<T> where(bool Function(T event) test);
import 'dart:async';

Future<void> main() async {
  // Stream<R> cast<R>();
  Stream<int> stream1 = countStream(5);
  Stream<num> streamNum = stream1.cast<num>();
  // Stream<S> expand<S>(Iterable<S> Function(T element) convert);
  Stream<int> stream2 = countStream(5);
  Stream<int> stream = stream2.expand((element) => [element, element]);
  print(await stream.join(","));
  // Stream<S> map<S>(S Function(T event) convert);
  Stream<int> stream3 = countStream(5);
  var mapStream = stream3.map((event) => event * 2);
  print(await mapStream.join(","));
  // Stream<T> skip(int count)
  Stream<int> stream4 = countStream(5);
  var skipStream = stream4.skip(2);
  print(await skipStream.join(","));
  // Stream<T> skipWhile(bool Function(T element) test)
  Stream<int> stream5 = countStream(5);
  var skipWhileStream = stream5.skipWhile((element) => element < 4);
  print(await skipWhileStream.join(','));
  // Stream<T> take(int count)
  Stream<int> stream6 = countStream(5);
  var takeStream = stream6.take(3);
  print(await takeStream.join(','));
  // Stream<T> takeWhile(bool Function(T element) test)
  Stream<int> stream7 = countStream(5);
  var takeWhileStream = stream7.takeWhile((element) => element < 3);
  print(await takeWhileStream.join(','));
  // Stream<T> where(bool Function(T event) test)
  Stream<int> stream8 = countStream(5);
  var whereStream = stream8.where((event) => event.isEven);
  print(await whereStream.join(','));


  print('*'*50);

//  Stream<E> asyncExpand<E>(Stream<E> Function(T event) convert); // 与 expand 类似，但是函数参数允许是异步函数
//  Stream<E> asyncMap<E>(FutureOr<E> Function(T event) convert); // 与 map 类似，但是函数参数允许是异步函数
//  Stream<T> distinct([bool Function(T previous, T next) equals]);

  Stream<int> stream9 = countStream(5);
  var asyncExpandStream = stream9.asyncExpand((event) => convert(event));
  print(await asyncExpandStream.join(','));

  Stream<int> stream10 = countStream(5);
  var asyncMapStream = stream10.asyncMap((event) => convert2(event));
  print(await asyncMapStream.join(','));

  Stream<int> stream11 = Stream.fromIterable(<int>[1,1,2,2,3,4]);
  var distinctStream = stream11.distinct((previous, next) => previous == next);
  print(await distinctStream.join(','));

//  Stream<T> handleError(Function onError, {bool test(error)});
//  Stream<T> timeout(Duration timeLimit,
//      {void Function(EventSink<T> sink) onTimeout});
//  Stream<S> transform<S>(StreamTransformer<T, S> streamTransformer);


}

Stream<List<String>> convert(int event) async* {
  Future.delayed(Duration(seconds: 1));
  yield ["#$event", "#$event"];
}

FutureOr<String> convert2(int event)  {
  return Future.delayed(Duration(seconds: 1), () => '#$event');
}

Stream<int> countStream(int to) async* {
  for (var i = 1; i <= to; i++) {
    Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
