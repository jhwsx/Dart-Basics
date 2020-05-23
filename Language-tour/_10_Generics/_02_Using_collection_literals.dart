// List，set 和 map 字面量可以参数化，就是在字面量前加<type> 或 <keyType, valueType>
void main() {
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String> {
    'index.html' : 'Homepage',
    'robots.txt' : 'Hints for web robots',
    'humans.txt' : 'We are people, not machines'
  };
}