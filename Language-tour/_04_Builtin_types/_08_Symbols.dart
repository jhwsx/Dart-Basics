// Symbol literals are compile-time constants.
void main() {
  var xx = #radix;
  print(xx);
  print(xx.runtimeType);
}