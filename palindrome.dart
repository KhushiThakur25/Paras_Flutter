void main() {
  int n = 1223221;
  int m = n;
  int rev = 0;
  while (n > 0) {
    rev = rev * 10 + n % 10;
    n ~/= 10;
  }
 if (m == rev){
  print("Number is palindrome..");
 }
 else{
  print("Number is not palindrome..");
 }
}
