typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

int product(num a, num b) => a * b;

void main() {
  assert(sort is Compare<int>); // pass

  assert(product is Compare<num>); // pass

}