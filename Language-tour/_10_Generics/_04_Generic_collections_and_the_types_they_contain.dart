// Dart generic types are reified, which means that they carry their type information around at runtime.
// 注意：Java 中的泛型是使用擦除来实现的，在运行期泛型的类型参数都会移除。
void main() {
  var names = List<String>.empty(growable: true);
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>);
  // 在 Java 中，只能写成下面这行的样子。
  print(names is List);
}