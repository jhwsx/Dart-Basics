// condition ? expr1 : expr2
// expr1 ?? expr2 注意这个比较新，含义：如果 expr1 不是 null，那么返回它的值；否则，返回 expr2
void main() {
  bool isPublic = true;
  var visibility = isPublic ? "public" : "private";
  assert(playerName(null) == 'Guest');
  assert(playerName('Peter') == 'Peter');
}

String playerName(String name) => name ?? "Guest";

