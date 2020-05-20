// 在运行期获取一个对象的类型，使用对象的 runtimeType 属性，这会返回一个 Type 对象
void main() {
  var x = 5;
  print('The type of x is ${x.runtimeType}'); // The type of x is int
  var y = 1.0;
  print(y.runtimeType); // double
  var a = 'Hello';
  print(a.runtimeType); // String
  var list = [1, 2, 3];
  print(list.runtimeType); // List<int>
  var set = {1, 2, 3};
  print(set.runtimeType); // _CompactLinkedHashSet<int>
  var map = {1: 'one', 2: 'two'};
  print(map.runtimeType); // _InternalLinkedHashMap<int, String>
}
