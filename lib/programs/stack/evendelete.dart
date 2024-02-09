class Stack {
  List<int> stackArray = [];
  void push(int data) {
    stackArray.add(data);
  }

  void removeeven() {
    for (int i = stackArray.length-1; i >= 0; i--) {
      if (stackArray[i] % 2 == 0) {
        stackArray.removeAt(i);
      }
    }
  }
}

void main() {
  Stack s = Stack();
  s.push(3);
  s.push(32);
  s.push(5);
  print(s.stackArray);

  s.removeeven();
  print(s.stackArray);
}
