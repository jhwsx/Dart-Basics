// FLutter 在 debug 模式下开启了断言。
// 在生产模式下，断言会被忽略。
void main() {
  var number = 1;
  assert(number > 0);
  // 第一个参数：只要是能够得到布尔值的表达式都可以
  assert(number < 0, 'number should be smaller then 0.'); // 添加信息
}