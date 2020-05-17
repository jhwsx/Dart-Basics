// 判断相等，关系运算符
// == 比较的是内容，比较地址用 identical()
void main() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
  var a1 = 3;
  var a2 = 3;
  assert(a1 == a2);
  assert(identical(a1, a2), false);
}

