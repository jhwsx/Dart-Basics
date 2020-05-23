// 1, 导入内置的库，URI 要有特殊的 dart: 协议;
// 2, 导入其它的库，可以使用一个文件系统路径或 package: 协议。
// 3, 当导入冲突时，给其中一个库指定一个 prefix
// 4, 不完全导入: show 和 hide。啥都不使用，是全部导入; 当使用了 show，那么只会导入 show 指明的部分;
// 当使用了 hide， 那么只会不导入 hide 指明的部分

// 参考文章：https://juejin.im/post/5b601f40e51d4519575a5036
import 'dart:math';

import 'lib1.dart';
import 'lib2.dart' as lib2;
import 'lib3.dart' hide Foo;
void main() {
  print(e);

  Element element = Element();

  lib2.Element element2 = lib2.Element();

  Foo foo = new Foo();
  foo.foo();

  Sky sky = Sky();
  sky.size();
}