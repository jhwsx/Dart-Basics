void main() {
  var list = [1, 2, 3];
  // 可以把函数作为参数传递给另外一个函数
  list.forEach(printElement);
  
  // 把函数赋值给一个变量
  var loudify = (msg) => '!!! ${msg.toUpperCase()}!!!'; // 这是匿名函数的写法
  print(loudify('hello'));

  // 计算 1 到 100 的整数和
  var sum = (number) {
    var result = 0;
    for (var i = 1; i <= number; i++) {
      result += i;
    }
    return result;
  };
  print(sum(100));
}

void printElement(int element) {
  print(element);
}