void main() {
  var myFoo = Foo<My>();
  print(myFoo);
  var superFoo = Foo<Super>();
  print(superFoo);
//  var superSuperFoo = Foo<SuperSuper>(); // 编译报错：Try using a type that is or is a subclass of 'Super'.

 var foo = Foo();
 print(foo); // 不指定泛型参数，就是以限定的类型作为泛型参数。
}

// Output:
// Instance of 'Foo<My>
// Instance of 'Foo<Super>
// Instance of 'Foo<Super>

class Foo<T extends Super> {
  @override
  String toString() {
    return "Instance of 'Foo<$T>";
  }
}

class SuperSuper {

}

class Super extends SuperSuper {

}

class My extends Super {

}