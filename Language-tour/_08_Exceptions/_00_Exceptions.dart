// 和 Java 相比，Dart 中所有的异常都是非检查异常。
// 方法不会声明它们可能抛出的异常，开发者不需要捕获任何异常。
// Dart 提供 Exception 和 Error 类型的异常。
// Dart 可以抛出任何非空的对象——不仅仅是 Exception 和 Error 对象——作为一个异常。
// 抛出一个异常是一个表达式。
import 'dart:async';

import 'dart:io';

void main() {
  var isThrow = false;
  if (isThrow) {
    throw FormatException('Expected at least 1 section');
  }
  if (isThrow) {
    throw 'Out of llamas!';
  }
  try {
    throwExceptionInSwitchCase("Tuesday");
  } on Exception {
    print("Exception happened");
  }
  try {
//    throwExceptionInSwitchCase("Monday");
    throwExceptionInSwitchCase("Tuesday");
//    throwExceptionInSwitchCase('Wednesday');
  } on TimeoutException catch(e) { // on 用于指定异常
    print(e);
  } on FormatException catch(e) { // catch 用于获取异常对象
    print(e);
    rethrow; // rethrow 重新抛出异常
  } catch(e, s) { // catch 可以指定两个参数，第二个是堆栈信息
    print(e);
    print(s);
  } finally { // If no catch clause matches the exception, the exception is propagated after the finally clause runs:
    print('Finally clause');
  }
}

void distanceTo(num other) => throw UnimplementedError();

void throwExceptionInSwitchCase(String weekday) {
  switch (weekday) {
    case "Monday":
      throw SocketException("link error");
    case "Tuesday":
      throw FormatException();
    case "Wednesday":
      throw TimeoutException("Timeout");
      break;
    default:
      break;
  }
}
