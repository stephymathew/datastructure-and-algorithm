class Queue {
  List<int> stack1 = [];
  List<int> stack2 = [];
  void enqueue(int data) {
    stack1.add(data);
  }

  int? dequeue() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.isNotEmpty ? stack2.removeLast() : null;
  }
}

void main() {
  Queue newQueue = Queue();
  newQueue.enqueue(10);
  newQueue.enqueue(20);
  newQueue.enqueue(30);
  newQueue.enqueue(40);
  newQueue.enqueue(50);

  print(newQueue.dequeue()); // Output: 10
  print(newQueue.dequeue()); // Output: 20
  print(newQueue.dequeue()); // Output: 30
  print(newQueue.dequeue()); // Output: 40
  print(newQueue.dequeue()); // Output: 50
  print(newQueue.dequeue()); // Output: null (Queue is empty)
}