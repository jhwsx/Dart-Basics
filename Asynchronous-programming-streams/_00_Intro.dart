// 重点：
// 1, Stream 提供了一个异步的数据序列;
// 2, 数据序列包括用户产生的事件和从文件读取的数据；
// 3, 使用 await for 或者 Stream Api 中的 listen() 来处理 stream；
// 4, streams 提供了响应错误的一种方式；
// 5, streams 有两种：single subscription，broadcast。

// 1, Dart 中的异步编程以 Future 和 Stream 类为特征。
// 2, 一个 Future 代表不能立马完成的计算。常规的函数返回结果，而异步函数返回一个 Future 对象。
//    Future 对象里包含了结果。当结果准备好时，Future 就会返回结果。
// 3, 一个 stream 是一个异步事件的序列。

