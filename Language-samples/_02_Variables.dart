// 有类型推断，不用明显的类型。
void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print(name.runtimeType);
  print(year.runtimeType);
  print(antennaDiameter.runtimeType);
  print(flybyObjects.runtimeType);
  print(image.runtimeType);

  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(image);
}
/*
Voyager I
1977
3.7
[Jupiter, Saturn, Uranus, Neptune]
{tags: [saturn], url: //path/to/saturn.jpg}
 */
