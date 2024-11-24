import 'dart:math';

void main() {
  int n = 145;
  int m = n;
  int count = 0;
  num sums = 0;
  while (n > 0) {
    count += 1;
    n ~/= 10;
  }
  print(count);
  n = m;
  while (m > 0) {
    sums += pow(m % 10, count);
    m ~/= 10;
  }
  if (n == sums) {
    print("Number is an Armstrong..");
  } else {
    print("Number is not an Armstrong..");
  }
}
