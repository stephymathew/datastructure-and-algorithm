void main() {
  List<int> array = [9, 8, 7, 6, 5, 4, 3];
  for (int i = 0; i < array.length; i++) {
    for (int j = 1; j < array.length - i; j++) {
      if (array[j - 1] > array[j]) {
        int temp = array[j];
        array[j] = array[j - 1];
        array[j - 1] = temp;
      }
    }
  }
  print(array);
}
