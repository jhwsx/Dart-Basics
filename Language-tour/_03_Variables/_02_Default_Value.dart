// 顶层变量
int topLevelVar = 0;

class Clazz {
  // 类变量
  static int classVar = 0;
  // 成员变量
  int memberVar = 0;

  void method() {
    // 局部变量
    int localVar = 0;
    print('topLevelVar=$topLevelVar');
    print('classVar=$classVar');
    print('memberVar=$memberVar');
    print('localVar=$localVar');
  }
}
void main() {
  Clazz clazz = Clazz();
  clazz.method();
}

// topLevelVar=null
// classVar=null
// memberVar=null
// localVar=null