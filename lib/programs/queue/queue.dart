class Node {
  int? value;
  Node? next;
  Node(int value) {
    this.value = value;
  }
}

class Queue {
  Node? front;
  Node? rear;
  void enqueue(int value) {
    Node newNode = Node(value);
    if (front == null) {
      front = rear = newNode;
      front = newNode;
    }
  }

  void dequeue() {
    if (front == null) {
      print("it is undrflow");
    } else {
      front = front!.next;
    }
  }

  void peek() {
    print(front!.value);
  }

  void display() {
    if (front == null) {
      print("it is empty");
    } else {
      Node? current = front;
      while (current != null) {
        print(current.value);
        current = current.next;
      }
      print(" ");
    }
  }
}

void main() {
  Queue q = Queue();
  q.enqueue(1);
  q.enqueue(2);
  q.enqueue(3);
  q.enqueue(4);
  q.enqueue(5);
  q.enqueue(6);
  q.display();
  q.dequeue();
  q.dequeue();
  q.dequeue();
  q.peek();
  q.display();
}
