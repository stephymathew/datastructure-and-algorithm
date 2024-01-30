void main() {
  String name = "stephy mathew";
  String vowels = "aeiou";
  String name2 = "";
  for (int i = 0; i < name.length; i++) {
    if (vowels.contains(name[i])) {
      name2 += name[i];
    }
  }
  print(name2);
}
