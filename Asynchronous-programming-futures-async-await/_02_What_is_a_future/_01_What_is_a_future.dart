// 什么是 future？
// 1, 一个 future 是 Future 类的一个实例；
// 2, 一个 future 代表了异步操作的结果，它有两种状态：uncompleted 或 completed。
// 3, uncompleted 是一个 Dart 术语，指的是一个 future 产生一个值之前的状态。
// 4, uncompleted：当调用一个异步函数，这个函数就会返回一个 uncompleted 的 future。
// 这个 future 正在等待异步操作完成或抛出一个错误。
// 5, completed：如果异步操作成功，那么 future 就会返回一个值; 否则，future 会抛出一个异常。
// 返回一个值：Future<T> 类型的 future 会返回一个值。例如 Future<String> 会返回一个 String 的值；如果一个
// future 不产生一个有用的值，那么可以用 Future<void>。
// 返回一个错误
