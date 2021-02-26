// switch 语句使用 == 比较整型，字符串以及编译期常量。比较的对象必须都是同样的类的实例
// 而不是它的子类的实例，并且类禁止覆写 == 。枚举类型可以在 switch 语句中使用。
// 通常，每一个非空的 case 从句以 break 语句结尾。也可以使用 continue，throw，或者
// return 语句结尾。

void main() {
  doByTime('dawn');
  print("-" * 20);
  doByTime('evening');

  print(getWeekDayString(4));
}

void doByTime(String time) {
  switch (time) {
    case 'dawn': // 空语句，允许穿透; 不写 break 等不会报错。
    case 'morning':
      print('Work');
      break; // 若注释掉 break，编译报错：The last statement of the 'case' should be 'break', 'continue', 'rethrow', 'return' or 'throw'.
    case 'noon':
      print('Have lunch');
      break;
    case 'afternoon':
      print('Work');
      break;
    case 'evening':
      print('Work overtime');
      continue snack;
    case 'night':
      print('Sleep');
      break;
    snack:
    case 'snack':
      print('Have a snack');
      break;
    default:
      print('Unknown time');
  }
}

String getWeekDayString(int weekday) {
  switch (weekday) {
    case 1:
      return "星期一";
    case 2:
      return "星期二";
    case 3:
      return "星期三";
    case 4:
      return "星期四";
    case 5:
      return "星期五";
    case 6:
      return "星期六";
    case 7:
      return "星期日";
    default:
      throw "输入错误";
  }
}
