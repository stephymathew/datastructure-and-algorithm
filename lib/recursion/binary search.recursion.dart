int binarysearch(List array, int value) {
  int start = 0, end = array.length - 1, mid;
  while (start <= end) {
    mid = start + (end - start) ~/ 2;
    if (array[mid] == value) {
      return mid;
    }
    if (array[mid] < value) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return -1;
}

void main() {
  List array = [1, 1, 2, 3, 3, 4, 5, 5, 6, 9];
  int value = 4;
  int result = binarysearch(array, value);
  if (result == -1) {
    print("list is empty");
  } else {
    print("index $result");
  }
}
