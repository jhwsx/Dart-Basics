// 所有的函数都有返回值。
// 如果没有指定返回值，那么语句 return null; 被隐含地追加到函数体内。

void main() {
  assert(foo() == null); // pass
  assert(boo() == null); // pass
  // assert(goo() == null); // 编译报错：This expression has a type of 'void' so its value can't be used.
  assert(!(hoo() == null)); // pass
}

foo() {}
//boo 等价于 foo
boo() {
  return null;
}
// goo 不等价于 foo
void goo() {

}

int hoo() {
  return 0;
}