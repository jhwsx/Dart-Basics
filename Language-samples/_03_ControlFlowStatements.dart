void main() {
  var year = 1977;
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  for (var object in flybyObjects) {
    print(object);
  }

  var list = [1, 2, 3, 4, 5, 6];
  for (var number in list) {
    print(number);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
}