int linearsearch(List array, int value) {
  int i = 0;
  while (i < array.length) {
    if (array[i] == value) {
      return i;
    }
    i++;
  }
  return -1;
}

void main() {
  List array = [1, 2, 3, 4, 4, 54];
  int value = 4;
  int result = linearsearch(array, value);
  if (result == -1) {
    print("list is emopopty");
  }
  print(result);
}
