// 修改 stream：基于原始的 stream，返回一个新的 stream。
// Stream<R> cast<R>();
// Stream<S> expand<S>(Iterable<S> Function(T element) convert);
// Stream<S> map<S>(S Function(T event) convert);
// Stream<T> skip(int count);
// Stream<T> skipWhile(bool Function(T element) test);
// Stream<T> take(int count);
// Stream<T> takeWhile(bool Function(T element) test);
// Stream<T> where(bool Function(T event) test);