// 本地扩展方法
void main() {
  print('42'.parseIntLocal());
  print('3.14'.parseDoubleLocal());
}

extension on String { // 本地扩展方法，没有扩展名的写法
  int parseIntLocal() {
    return int.parse(this);
  }

  double parseDoubleLocal() {
    return double.parse(this);
  }
}

extension _NumberParsingLocal on String { // 本地扩展方法，扩展名已下划线开始的写法
  int parseIntLocal2() {
    return int.parse(this);
  }

  double parseDoubleLocal2() {
    return double.parse(this);
  }
}

