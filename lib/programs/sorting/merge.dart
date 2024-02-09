import 'package:flutter/material.dart';

List<int> mergesort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int mid = arr.length ~/ 2;
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);
  return join(mergesort(left), mergesort(right));
}

List<int> join(List<int> leftArray, List<int> rightArray) {
  List<int> sortArray = [];
  while (leftArray.isNotEmpty && rightArray.isNotEmpty) {
    if (leftArray[0] < rightArray[0]) {
      sortArray.add(leftArray.removeAt(0));
    } else {
      sortArray.add(rightArray.removeAt(0));
    }
  }
  sortArray.addAll(leftArray);
  sortArray.addAll(rightArray);
  return sortArray;
}

void main() {
  List<int> arr = [8, 7, 6, 54];
  print(mergesort(arr));
}
