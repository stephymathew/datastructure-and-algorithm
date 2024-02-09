String reverseString1(String s) {
  List<String> data = [];
  for (int i = 0; i < s.length; i++) {
    data.add(s[i]);
  }
  String reverse = " ";
  while (data.isNotEmpty) {
    reverse += data.removeLast();
  }
  
}
