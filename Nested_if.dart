void main() {
  int age = 17;
  bool id = true;
  if (id) {
    print("Welcome to gate 1..");
    if (age >= 18) {
      print("Welcome to party!..");
    } else {
      print("Exit..");
    }
    // ignore: dead_code
  } else {
    print("Exit");
  }
}
