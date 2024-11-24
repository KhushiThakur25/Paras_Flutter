void main() {
  int n = 65513;
  int m = n;
  int rev = 0;
  while (n > 0) {
    rev = rev * 10 + n % 10;
    n ~/= 10;
  }
  print("Reverse of the $m is : $rev");
}
