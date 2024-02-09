class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class Stack {
  Node? top;
  void push(int value) {
    Node newNode = Node(value);
    if (top == null) {
      top = newNode;
      return;
    }
    if (top != null) {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    if (top == null) {
      print("underflow");
      return;
    }
    if (top != null) {
      top = top!.next;
    }
  }

  void display() {
    if (top == null) {
      print("stack is empty");
    } else {
      Node? current = top;
      while (current != null) {
        print(current.data);
        current = current.next;
      }
      print(' ');
    }
  }
}

void main() {
  Stack s = Stack();
  s.push(56);
  s.push(78);
  s.push(8);
  s.display();
  s.pop();
  s.display();
}
