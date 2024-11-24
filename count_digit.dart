void main() {
  int n = 4563546156465586412;
  int count = 0;
  while (n > 0) {
    count += 1;
    n ~/= 10;
  }
  print("Number of digits are: $count");
}
