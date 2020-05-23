// 泛型：
// 1, 泛型的作用
//    泛型可以用于类型安全;
//    合理地指定泛型类型可以产生更好的代码;
//    可以使用泛型减少代码重复。


void main() {
  var names = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
  // names.add(42); // 编译报错：The argument type 'int' can't be assigned to the parameter type 'String'.
}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

class StringCache extends Cache<String> {
  @override
  String getByKey(String key) {

  }

  @override
  void setByKey(String key, String value) {

  }
}

class IntCache extends Cache<int> {
  @override
  int getByKey(String key) {
  }

  @override
  void setByKey(String key, int value) {
  }

}