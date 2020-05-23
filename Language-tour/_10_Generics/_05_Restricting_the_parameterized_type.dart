void main() {
  var myFoo = Foo<My>();
  var superFoo = Foo<Super>();
//  var superSuperFoo = Foo<SuperSuper>(); // 编译报错：Try using a type that is or is a subclass of 'Super'.

 var foo = Foo();
}

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