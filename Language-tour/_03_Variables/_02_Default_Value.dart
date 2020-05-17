void main() {
  // 没有初始化的变量都有一个 null 的初始值。
  int lineCount; // 即便 lineCount 是数值类型，也被初始化为 null，因为在 Dart 中一切都是对象。
  assert(lineCount == null); // 断言成功
}