void main() {

  int sum1 = 0;
  int num = 100;
  int i = 1;
  while(i <= num) {
    sum1 += i;
    i++;
  }
  assert(sum1 == 5050);

  int sum2 = 0;
  int j = 1;
  do {
    sum2 += j;
    j++;
  } while(j <= num);
  assert(sum2 == 5050);

}