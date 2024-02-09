void main() {
  List<int> array = [
    9,
    8,
    6,
    54,
    43,
  ];
  for (int i = 1; i < array.length; i++) {
    int temp = array[i];
    int j = i - 1;
    while (j > 0 && array[j] > temp) {
      array[j + 1] = array[j];
    }
    array[j + 1] = temp;
  }
  print(array);
}
