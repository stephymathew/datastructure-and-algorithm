String reversedstr(String str) {
  if (str.length <= 1) {
    return str;
  }
  return reversedstr(str.substring(1) + str[0]);
}

void main() {
  String orginal = "hello world";
  String reversed = reversedstr(orginal);
  print(reversed);
}
