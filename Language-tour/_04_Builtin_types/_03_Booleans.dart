// bool 类型，字面量为 true 和 false，这两个都是编译期常量。
// 在 Dart 中不可以写 if (nonbooleanValue) 或者 assert (nonbooleanValue)，因为
// Dart 是类型安全的
// 需要显式地检查
void main() {
  var fullName = '';
  assert(fullName.isEmpty);

  var hitPoints = 0;
  if (hitPoints == 0) {
    print('is zero');
  }

  var isNull;
  assert(isNull == null);

  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

