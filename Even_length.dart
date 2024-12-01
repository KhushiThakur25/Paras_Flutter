import 'dart:io';

void main() {
  print("Enter the string..");
  String? sentence = stdin.readLineSync()!;
  print(sentence);
  List<String> li = sentence.split(" ");
  print(li.length);
  for (int i = 0; i < li.length; i++) {
    if ((li[i].length) % 2 == 0) {
      print(li[i]);
    }
  }
}
