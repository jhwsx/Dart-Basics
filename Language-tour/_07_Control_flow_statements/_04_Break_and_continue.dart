void main() {
  int oddSum = 0;
  for (var i = 0; i <= 100; i++) {
    if (i % 2 == 0) {
      continue;
    }
    oddSum += i;
  }
  int evenSum = 0;
  for (var i = 0; i <= 100; i++) {
    if (i % 2 != 0) {
      continue;
    }
    evenSum += i;
  }
  assert(oddSum + evenSum == 5050);

  var list = [1, 2, 0, -8];
  var target;
  for (var value in list) {
    if (value < 0) {
      target = value;
      break;
    }
  }
  assert(target == -8);
}
