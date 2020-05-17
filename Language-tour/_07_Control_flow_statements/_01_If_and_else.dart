// 注意：条件必须使用布尔值，其他的都不行。
void main() {
  int grade = 60;
  if (grade > 90) {
    print('Excellent');
  } else if (grade > 70) {
    print('Good');
  } else if (grade >= 60) {
    print('Bad');
  } else {
    print('Failed');
  }
}