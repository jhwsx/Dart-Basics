void main() {
  Iterable<String> addresses = ['willwaywang6@gmail.com', '392337950@qq.com', '123456'];
  var emailAddresses = parseEmailAddresses(addresses);
  print('emailAddresses: $emailAddresses');

  var anyInvalidEmailAddr = anyInvalidEmailAddress(emailAddresses);
  print('anyInvalidEmailAddr: $anyInvalidEmailAddr');

  var validEmailAddress = validEmailAddresses(emailAddresses);
  print('validEmailAddress: $validEmailAddress');
}

Iterable<EmailAddress> parseEmailAddresses(Iterable<String> emailAddresses) {
  return emailAddresses.map((e) => EmailAddress(e));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emailAddresses) {
  return emailAddresses.any((element) => !isValidEmailAddress(element));
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emailAddresses) {
  return emailAddresses.where((element) => isValidEmailAddress(element));
}

class EmailAddress {
  String address;
  EmailAddress(this.address);


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress &&
          runtimeType == other.runtimeType &&
          address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() {
    return 'EmailAddress{address: $address}';
  }
}

bool isValidEmailAddress(EmailAddress emailAddress) {
  RegExp email = RegExp(r"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$");
  return email.hasMatch(emailAddress.address);
}