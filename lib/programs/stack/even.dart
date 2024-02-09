class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class Stack {
  List<int> stackArray = [];

  void push(int data) {
    stackArray.add(data);
  }

  bool isEmpty() {
    return stackArray.isEmpty;
  }

  List<int> findEvenNumbers() {
    List<int> evenNumbers = [];
    for (int i = stackArray.length - 1; i >= 0; i--) {
      if (stackArray[i] % 2 == 0) {
        evenNumbers.add(stackArray[i]);
      }
    }
    return evenNumbers;
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  
  print("Original stack:");
  print(stack.stackArray);
  
  List<int> evenNumbers = stack.findEvenNumbers();
  
  print("Even numbers found in the stack:");
  print(evenNumbers);
}
