// 闭包是一个函数对象
// 闭包定义在其他函数内部
// 闭包能够访问外部函数内的局部变量，并持有其状态
void main() {
  var add2 = makeAdder(2);
  print(add2); // Closure: (num) => num
  var add4 = makeAdder(4);
  print(add4); // Closure: (num) => num
  assert(add2(3) == 5);
  assert(add4(3) == 7);

  var makeSum1 = makeSum(100);
  print(makeSum1); // Closure: () => int
  assert(makeSum1() == 5050);

  var makeSum2 = makeSum(10);
  assert(makeSum2() == 55);

}
// 返回值是一个 Function，给这个函数的参数添加一个 addBy 的值。
Function makeAdder(num addBy) {
  // 闭包持有了局部变量 addBy
  return (num i) => addBy + i;
}

Function makeSum(int number) {
  var result = 0;
  // 闭包持有了局部变量 result 和 number
  return () {
    for (var i = 1; i <= number; i++) {
      result += i;
    }
    return result;
  };
}