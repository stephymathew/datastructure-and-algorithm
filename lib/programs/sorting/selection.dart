void main() {
  List<int> array = [9, 87, 6, 5, 44];
  for (int i = 0; i < array.length; i++) {
    int sm = array[i];
    for (int j = i + 1; i < array.length; j++) {
      if (array[j] < array[sm]) {
        sm = j;
      }
    }
    int temp = array[i];
    array[i] = array[sm];
    array[sm] = temp;
  }
  print(array);
}
