void main() {
  Iterable users = <User>[User('wzc', 19), User('wzj', 20), User('wcg', 7)];
  bool result1 = anyUserUnder18(users);
  print('result1=$result1');
  bool result2 = everyUserOver13(users);
  print('result2=$result2');
}
bool anyUserUnder18(Iterable<User> users) {
  // Implement this method
  return users.any((element) => element.age < 18);
}

bool everyUserOver13(Iterable<User> users) {
// Implement this method
  return users.every((element) => element.age > 13);
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}
