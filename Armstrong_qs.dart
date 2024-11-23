import 'dart:io';
import 'dart:math';

int to_count(int n) {
  int count = 0;
  while (n > 0) {
    count++;
    n ~/= 10;
  }
  return count;
}
 isArmstrong(int n, int count){
  num result = 0;
  while (n > 0){
    result += pow(n%10, count);
    n ~/= 10;
  }
  return result;
}

void main() {
  stdout.write("Enter the value of n");
  int n = int.parse(stdin.readLineSync()!);
  int count = to_count(n);
  print("Your digit count is : $count");
  num result = isArmstrong(n , count);
  if (result == n){
    print("Number is an armstrong..");
  }else{
    print("Number is not an armstrong..");
  }
}
