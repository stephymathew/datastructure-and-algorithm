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

  void insertafter(int nextto, int value) {
    Node newNode = Node(value);
    if (head == null) {
      print("list is null");
      return;
    }

    if (tail!.value != nextto) {
      tail!.next = newNode;
      newNode.prev = tail;
      return;
    }
    Node? current = head;
    while (current != null) {
      current = current.next;
    }
    newNode.next = current!.next!.next;
    current.next = newNode;
    newNode.prev = current;
    current.next!.prev = newNode;
  }
}

void main() {
  Linkedlist ls = Linkedlist();
  ls.addNode(23);
  ls.addNode(24);
  ls.addNode(21);
  ls.addNode(20);
  ls.display();
  ls.insertafter(21, 30);
  ls.display();
}
