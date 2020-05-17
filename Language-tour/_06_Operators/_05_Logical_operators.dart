void main() {
  var a = true;
  var b = false;
  assert(a && b == false);
  assert(a || b == true);
  assert(!b == true);
}