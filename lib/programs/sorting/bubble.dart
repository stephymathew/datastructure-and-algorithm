void bubblesort(List array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 1; j < array.length - i; j++) {
      if (array[j - 1] > array[j]) {
        int temp = array[j];
        array[j] = array[j - 1];
        array[j - 1] = temp;
      }
    }
  }
}

void main() {
  List array = [1, 8, 9, 6, 5];
  bubblesort(array);
  print(array);
}
