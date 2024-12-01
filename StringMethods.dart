void main() {
  String str = "This is your dart language";
  String st1 = "elephant";
  String st2 = "lion";
  int st = 65;
  String st3 = st.toString();
  print(str.length);
  print(str.isEmpty);
  print(str.isNotEmpty);
  print(str.codeUnitAt(0));
  print(st1.compareTo(st2));
  print(st3);
  print(st3.runtimeType);
  print(str.substring(0, 9));
  print(str.split(" "));
}
