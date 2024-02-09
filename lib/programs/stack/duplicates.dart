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

  void removeDuplicates() {
    Set<int> uniqueElements = {};
    List<int> resultStack = [];

    for (int i = stackArray.length - 1; i >= 0; i--) {
      int current = stackArray[i];
      if (!uniqueElements.contains(current)) {
        resultStack.add(current);
        uniqueElements.add(current);
      }
    }

    // Update the stackArray to contain the result
    stackArray = resultStack.reversed.toList();
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(4);
  stack.push(5);
  
  print("Original stack:");
  print(stack.stackArray);
  
  stack.removeDuplicates();
  
  print("Stack after removing duplicates:");
  print(stack.stackArray);
}
