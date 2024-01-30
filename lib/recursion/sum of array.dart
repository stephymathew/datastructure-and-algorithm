int sumofarray(List arr) {
  if (arr.isEmpty) {
    return 0;
  }
  return arr[0] + sumofarray( arr.sublist(1));
}

void main() {
  List orginal = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sum = sumofarray(orginal);
  print(sum);
}
