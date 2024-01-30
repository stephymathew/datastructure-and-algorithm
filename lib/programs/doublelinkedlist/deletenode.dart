class Node {
  int? value;
  Node? next;
  Node? prev;
  Node(int value) {
    this.value = value;
    next = null;
    prev = null;
  }
}

class Linkedlist {
  Node? head, tail;
  void addNode(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
      return;
    }
    if (head != null) {
      tail!.next = newNode;
      tail = newNode;
      newNode.prev = tail;
      return;
    }
  }

  void display() {
    if (head == null) {
      print("list is empty");
      return;
    }
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
    return;
  }

  void delete(int value) {
    Node newNode = Node(value);
    if (head == null) {
      print("linkedlist is empty");
      return;
    }
    if (head!.value == value) {
      head = head!.next;
      head!.prev = null;
      return;
    }
    if (tail!.value == value) {
      tail = tail!.prev;
      tail!.next = null;
      return;
    }
    Node? current = head;
    while (current!.next!.value != value) {
      current = current.next;
    }
    current.next = current.next!.next;
    current.next!.prev = current;
  }
}

void main() {
  Linkedlist ls = Linkedlist();
  ls.addNode(32);
  ls.addNode(21);
  ls.display();
  ls.delete(21);
  ls.display();
}
