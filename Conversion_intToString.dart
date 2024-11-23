import 'dart:io';

void int_To_String(int n) {
  Map<int, String> dic = {
    1: 'one',
    2: 'two',
    3: 'Three',
    4: 'Four',
    5: 'Five',
    6: 'Six',
    7: 'Seven',
    8: 'Eight',
    9: 'Nine',
    0: 'Zero'
  };
  List<int> li = [];
  while (n > 0) {
    li.insert(0, n % 10);
    n ~/= 10;
  }
  print(li);
  for (int digit in li) {
    print(dic[digit]);
  }
}

void main() {
  stdout.write("Enter the value of n:");
  int n = int.parse(stdin.readLineSync()!);
  int_To_String(n);
}
