// 函数需要指定参数和返回值
int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  var result = fibonacci(10);
  print(result);

  // A shorthand => (arrow) syntax is handy for functions that contain a single
  // statement. This syntax is especially useful when passing anonymous functions
  // as arguments
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  var iterable = flybyObjects.where((name) => name.contains('tune'));
  iterable.forEach(print); // print 这个顶层函数作为参数传递给 forEach。

//  flybyObjects.where((name) => name.contains('tune')).forEach(print);

}
