// 允许一个 Dart 类的实例像一个函数一样被调用，实现 call() 方法
void main() {
  var wf = WannableFunction();
  var out = wf('Hi', 'there,', 'Well done');
  print(out);

  var person = Person('wzc', 32);
  var result = person.call();
  print(result);
}

class WannableFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  String call() => '$name: $age';
}