void main() {
  // 正好有一个满足条件
  Iterable<String> iterable1 = <String>{'big', 'small', 'Mail'};
  var value1 = singleWhere(iterable1);
  print('value1=$value1');

  // 没有一个满足条件, 不指定 orElse，抛出异常
  try {
    Iterable<String> iterable2 = <String>['hello', 'hi', 'well', 'More'];
    var value2 = singleWhere(iterable2);
  } catch (e) {
    print(e); // Bad state: No element
  }

  // 有两个以上满足条件，不管有没有指定 orElse，都抛出异常
  try {
    Iterable<String> iterable3 = <String>['Map', 'Mad', 'He', 'More'];
    var value3 = singleWhere(iterable3);
  } catch (e) {
    print(e); // Bad state: Too many elements
  }
  // 没有一个满足条件, 指定 orElse，返回 orElse 的值
  Iterable<String> iterable4 = <String>['hello', 'hi', 'well', 'More'];
  var value4 = singleWhereWithOrElse(iterable4, orElse: () => 'Fail');
  print('value4=$value4'); // value4=Fail
}


// Implement the predicate of singleWhere
// with the following conditions
// * The element contains the character `'a'`
// * The element starts with the character `'M'`
String singleWhere(Iterable<String> items) {
  return items.singleWhere((element) => element.contains('a') && element.startsWith('M') );
}

String singleWhereWithOrElse(Iterable<String> items, {required String orElse()}) {
  return items.singleWhere((element) => element.contains('a') && element.startsWith('M') , orElse: orElse);
}