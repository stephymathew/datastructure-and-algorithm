void main() {
  String name = "hello world";
  String name2 = "";
  for (int i = name.length-1; i >= 0; i--) {
    name2 += name[i];
  }
  print(name2);
}
