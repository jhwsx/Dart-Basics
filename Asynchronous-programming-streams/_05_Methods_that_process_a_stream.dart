// Stream<T> 的方法：处理 stream，返回一个结果
//  Future<T> get first;
//  Future<bool> get isEmpty;
//  Future<T> get last;
//  Future<int> get length;
//  Future<T> get single;
//  Future<bool> any(bool Function(T element) test);
//  Future<bool> contains(Object needle);
// todo 什么是 drain？
//  Future<E> drain<E>([E futureValue]);
//  Future<T> elementAt(int index);
//  Future<bool> every(bool Function(T element) test);
//  Future<T> firstWhere(bool Function(T element) test, {T Function() orElse});
//  Future<S> fold<S>(S initialValue, S Function(S previous, T element) combine);
//  Future forEach(void Function(T element) action);
//  Future<String> join([String separator = ""]);
//  Future<T> lastWhere(bool Function(T element) test, {T Function() orElse});
// todo 什么是 pipe？
//  Future pipe(StreamConsumer<T> streamConsumer);
//  Future<T> reduce(T Function(T previous, T element) combine);
//  Future<T> singleWhere(bool Function(T element) test, {T Function() orElse});
//  Future<List<T>> toList();
//  Future<Set<T>> toSet();

// fold vs reduce
// Future<S> fold<S>(S initialValue, S combine(S previous, T element))
// Future<T> reduce(T combine(T previous, T element))
// fold 的返回值未必和元素的类型一致，reduce 的返回值类型必须和元素的类型一致。
// fold 可以操作空的 stream，reduce 不可以会抛异常
// fold 可指定一个初始值，reduce 不可以（其实它的初值就是 stream 里的第一个元素）
Future<void> main() async {
  var stream1 = countStream(10);
  var first = await stream1.first;
  print('first=$first');
  var stream2 = countStream(10);
  var last = await stream2.last;
  print('last=$last');
  var stream3 = countStream(10);
  var isEmpty = await stream3.isEmpty;
  print('isEmpty=$isEmpty');
  var stream4 = countStream(10);
  try {
    var single1 = await stream4.single;
  } catch (e) {
    print(e);
  }
  var stream5 = countStream(0);
  try {
    var single2 = await stream5.single;
  } catch (e) {
    print(e);
  }
  try {
    var stream6 = countStream(1);
    var single3 = await stream6.single;
    print(single3);
  } catch (e) {
    print(e);
  }
  var stream7 = countStream(10);
  var length = await stream7.length;
  print('length=$length');
  var stream8 = countStream(10);
  var isExistLessThan0 = await stream8.any((element) => element < 0);
  print('isExistLessThan0=$isExistLessThan0');
  var stream9 = countStream(10);
  var isContains2 = await stream9.contains(2);
  print('isContains2=$isContains2');
  var stream10 = countStream(10);
  var elementAt9 = await stream10.elementAt(9);
  print('elementAt9=$elementAt9');
  var stream11 = countStream(10);
  // 是不是每个元素都满足指定的条件？
  var every = await stream11.every((element) => element > 0);
  print('every=$every');
  var stream12 = countStream(10);
  // 第一个满足指定条件的值
  var firstWhere = await stream12.firstWhere((element) => element > 2);
  print('firstWhere=$firstWhere');
  var stream13 = countStream(10);
  var sum = await stream13.fold(0, (previous, element) => previous + element);
  print('sum=$sum');
  var stream14 = countStream(10);
  var result = await stream14.forEach((element) {print(element); });
  print('result=$result');
  var stream15 = countStream(10);
  var join = await stream15.join(",");
  print('join=$join');
  // 最后一个偶数, 没有找到的话返回 -1
  var stream16 = countStream(10);
  var lastEvenNum = await stream16.lastWhere((element) => element & 1 == 0, orElse: () => -1); // 命名可选参数必须指定名称。
  print('lastEvenNum=$lastEvenNum');
  var stream17 = countStream(10);
  var total = await stream17.reduce((previous, element) => previous += element);
  print('total=$total');
  // fold vs reduce in terms of empty stream
  var stream18 = countStream(0);
  var r = await stream18.fold(0, (previous, element) => previous + element);
  print('r=$r');
  try {
    var stream19 = countStream(0);
    var s = await stream19.reduce((previous, element) => previous + element);
    print('s=$s');
  } catch (e) {
    print(e); // Bad state: No element
  }
  try {
    var stream20 = countStream(10);
    var singleWhere = await stream20.singleWhere((element) => element > 8, orElse: () => -1);
    print('singleWhere=$singleWhere');
  } catch (e) {
    print(e); // Bad state: Too many elements
  }
  var stream21 = countStream(10);
  var list = await stream21.toList();
  print('list=$list');
  var stream22 = countStream(10);
  var set = await stream22.toSet();
  print('set=$set');
}

Stream<int> countStream(int to) async* {
  for (var i = 1; i <= to; i++) {
    Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
