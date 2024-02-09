import 'dart:collection';

class Stack {
  Queue<int> queue = Queue<int>();

  void push(int item) {
    queue.add(item);
  }

  int? pop() {
    return queue.isNotEmpty ? queue.removeLast() : null;
  }
}

void main() {
  Stack myStack = Stack();

  myStack.push(1);
  myStack.push(2);
  myStack.push(3);

  print("Popped element: ${myStack.pop()}"); // Output: Popped element: 3
  print("Popped element: ${myStack.pop()}"); // Output: Popped element: 2
}