void main() {
  print('create generator');
  var generator = asynchronousNaturalsTo(5);
  print(generator.runtimeType); // _ControllerStream<int>
  print('start to listen...');
  generator.listen((int value) {
    print('$value');
  });
  print('end of main');

  // 不可以写成下面的，因为 generator 不是 Iterable
//  for (var value in generator) {
//    print(value);
//  }
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  print('waiting inside generator a bit :)');
  await Future.delayed(Duration(seconds: 5));
  print('start generating values...');
  int k = 0;
  while (k < n) {
    await Future.delayed(Duration(seconds: 1));
    yield k++;
  }
  print('end generating values...');
}

/*
create generator
_ControllerStream<int>
start to listen...
end of main
waiting inside generator a bit :)
start generating values...
0
1
2
3
4
end generating values...
 */