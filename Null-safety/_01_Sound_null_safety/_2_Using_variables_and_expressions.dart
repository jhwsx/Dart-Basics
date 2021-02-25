void main() {
  int? aNullableInt = null;
  int value = aNullableInt ?? 0;

  int? aNullableInt2 = getValue();
  int value2 = aNullableInt2!;

  double? d;
  print(d?.floor());
}

int? getValue() {
  return 2;
}

int definitelyInt(int? aNullableInt) {
  if (aNullableInt == null) {
    return 0;
  }
  return aNullableInt;
}