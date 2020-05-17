// 在运行期检查类型
void main() {
  dynamic emp = "hello";
  emp = Person();
  if (emp is Person) {
    emp.name = "wang";
  }

  (emp as Person).name = "wang";
}

class Person {
  String name;
  int age;
}