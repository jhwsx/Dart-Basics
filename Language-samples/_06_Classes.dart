class Spacecraft {
  String name;
  DateTime? launchDate;

  // 构造器，有把值赋给成员的语法糖
  Spacecraft(this.name, this.launchDate) {
    // 这里写初始化的代码
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  Spacecraft.newInstance(String name) : this(name, null);

  // 箭头语法：用于单个语句的函数
  int get launchYear => launchDate?.year ?? 0; // read-only non-final property 只读非 final 属性

  // 等价于
  // int get launchYear {
  //   return launchDate?.year;
  // }
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate!).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1997, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  var voyager4 = Spacecraft.newInstance('Voyager II');
  voyager4.describe();
}
