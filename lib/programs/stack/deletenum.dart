class Stack {
  List<int> stackArray = [];

  void push(int data) {
    stackArray.add(data);
  }

  int pop() {
    if (isEmpty()) {
      throw Exception("Stack is empty");
    }
    return stackArray.removeLast();
  }

  bool isEmpty() {
    return stackArray.isEmpty;
  }

  void delete(int target) {
    for (int i = stackArray.length - 1; i >= 0; i--) {
      if (stackArray[i] == target) {
        stackArray.removeAt(i);
        return; // Stop searching after the first occurrence is removed
      }
    }
    print("$target not found in the stack");
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
  
  stack.delete(3);
  
  print("Stack after deleting 3:");
  print(stack.stackArray);
}
