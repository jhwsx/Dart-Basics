// typedef 定义函数类型
typedef int add(int x, int y);

typedef Divide = double Function(int x, int y);

void compute1(add a) {
  print(a(1, 1));
}

void compute2(int minus(int x, int y)) {
  print(minus(1, 1));
}

void compute3(Divide divide) {
  print(divide(4,2));
}

void main() {
  compute1((x, y) => x + y);
  compute2((x, y) => x - y);
  compute3((x, y) => x / y);
}
