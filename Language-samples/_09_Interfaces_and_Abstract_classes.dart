import '_06_Classes.dart';

// Dart 没有 interface 关键字；但是，所有的类隐含定义了一个接口
// 所以我们可以 implements 任何类
class MockSpaceship implements Spacecraft {
  @override
  DateTime launchDate;

  @override
  String name;

  @override
  void describe() {
    // TODO: implement describe
  }

  @override
  // TODO: implement launchYear
  int get launchYear => null;
}

// 抽象类
abstract class Describable {
  // 这是一个抽象方法，标志是没有函数体，注意不需要 abstract 关键字。
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

class MyDescribable extends Describable {
  @override
  void describe() {
    print('some description');
  }
}

void main() {
  var myDescribable = MyDescribable();
  myDescribable.describeWithEmphasis();


}
