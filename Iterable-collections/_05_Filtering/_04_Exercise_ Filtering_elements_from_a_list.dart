Iterable<User> filterUnder21(Iterable<User> users) {
  // Implement this method
  return users.where((user) => user.age >= 21);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  // Implement this method
  return users.where((user) => user.name.length <= 3);
}

class User {
  String name;
  int age;

  User(this.name,
      this.age);
}