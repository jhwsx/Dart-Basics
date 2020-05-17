// 算术运算符
void main() {
    assert(2 + 3 == 5);
    assert(2 - 3 == -1);
    assert(2 * 3 == 6);
    assert(3 / 2 == 1.5);
    assert(3 ~/ 2 == 1); // ~/ 表示整除
    assert(3 % 2 == 1);

    var a, b;

    a = 0;
    b = ++a;
    assert(a == b);

    a = 0;
    b = a++;
    assert (a - 1 == b);

    a = 0;
    b = --a;
    assert(a == b);

    a = 0;
    b = a--;
    assert(a + 1 == b);
}