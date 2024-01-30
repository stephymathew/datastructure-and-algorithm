int sumOfDigits(int number) {
  
  if (number == 0) {
    return 0;
  }
  return number % 10 + sumOfDigits(number ~/ 10);
}

void main() {
  int originalNumber = 12345;
  int sum = sumOfDigits(originalNumber);
  print("Sum of Digits: $sum");
}
