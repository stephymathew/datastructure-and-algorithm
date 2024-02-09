class Node {
  int? data;
  Node? back;
  Node(int data) {
    this.data = data;
  }
}

class queue {
  Node? front;
  Node? rear;
  void enqueue(int dat) {
    Node newNode = Node(dat);
    if (front == null) {
      front = rear = newNode;
    } else {
      rear!.back = newNode;
      rear = newNode;
    }
  }

  void dequeue() {
    if (front == null) {
      print("it is empty");
    } else {
      front = front!.back;
    }
  }

  void display() {
    if (front == null) {
      print("it is empty");
    } else {
      Node? current = front;
      while (current != null) {
        print(current.data);
        current = current.back;
      }
    }
  }

  void peek() {
    print(front!.data);
  }
}

void main() {
  queue q = queue();
  q.enqueue(4);
  q.enqueue(5);
  q.enqueue(9);
  q.display();
  q.dequeue();
  q.display();
  q.peek();
  q.display();
}
