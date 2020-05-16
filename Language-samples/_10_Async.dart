import 'dart:io';

import '_06_Classes.dart';
// 使用 async 和 await 来避免回调地狱，使代码更加可读。
const oneSecond = Duration(seconds: 1);

// 这种写法不需要回调，好
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}
// printWithDelay 与 printWithDelay2 是等价的

// 这种写法包含回调，不好
Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}

// 使用 async 和 await 的例子
Future<void> createDescription(Iterable<String> objects) async {
  for (var object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print(
            'File for $object already exists. It was modified on $modified');
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create decription for $object: $e');
    }

  }
}
// 使用 aysnc*, 这是构建流的一种优雅可读的方式。
Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (var object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}

void main() {
  print(DateTime.now());
  printWithDelay('Hello, everyone.');
  printWithDelay2('Hello, everyone.');
}
