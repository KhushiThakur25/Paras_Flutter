void main() {
  List<int> li = [1, 2, 56, 8, 74, 21, 5, 58];
  print(li);
  List<int> ni = List.filled(10, 1);
  List<String> st = ["This", "is", "Your", "dart", "class"];
  ni[1] = 65;
  print(ni[1]);
  li.add(100);
  print(li);
  li.sort();
  print(li);
  print(st.join("  "));
}
