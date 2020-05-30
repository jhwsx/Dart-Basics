// 在运行期检查类型
void main() {
  dynamic emp = "hello";
  emp = Person();
  if (emp is Person) {
    emp.name = "wang";
  }

  (emp as Person).name = "wang";

  if (emp is! num) {
    print('emp is not a num');
  }

  try {
    dynamic person1;
    (person1 as Person).name = 'wang'; // person1 是 null， 直接调用 as 报错。
  } catch (e) {
    print(e);
    /*
    报错：NoSuchMethodError: The setter 'name=' was called on null.
          Receiver: null
          Tried calling: name="wang"
     */
  }

  dynamic person2;
  if(person2 is Person) { // person2 是 null，但是调用 is 不会报错。
    person2.name = "wang";
  }

}

class Person {
  String name;
  int age;
}
