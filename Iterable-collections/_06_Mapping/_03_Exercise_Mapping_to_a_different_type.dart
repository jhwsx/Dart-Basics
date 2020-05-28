void main() {
  var nameAgeIterable = getNameAndAges([User('ALice', 21), User('Bob', 1)]);
  print('nameAgeIterable: $nameAgeIterable');
}


Iterable<String> getNameAndAges(Iterable<User> users) {
  // implement this method
  return users.map((user) => '${user.name} is ${user.age}');
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}
