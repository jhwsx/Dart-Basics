// ??= 这个叫做 Null-aware 赋值操作符，这个比较新
void main() {
  var a;
  var b = 5;
  b ??= 6; // 只有??=左边的值是null时，才会赋值给左边。
  assert(b == 5);
  a ??= 5;
  assert(a == 5);

  var c = 4;
  c -= 2;
  assert(c == 2);

  var d = 4.0;
  d /= 2;
  assert(d == 2);

  
}