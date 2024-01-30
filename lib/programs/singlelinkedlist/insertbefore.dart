class Node {
  int? value;
  Node? next;
  Node(int value) {
    this.value = value;
    next = null;
  }
}

class LinedLists {
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
    }
  }

  void insertbefore(int before, int value) {
    Node newNode = Node(value);
    if (head!.value == before) {
      newNode.next = head;
      head = newNode;
    }
    Node? current = head;
    while (current!.next!.next != null) {
      current = current.next;
    }
    newNode.next = current.next;
    current.next = newNode;
  }
  void display() {
    if (head == null) {
      print("list is emoty");
    } else {
      Node? current = head;
      while (current != null) {
        print(current.value);
        current = current.next;
      }
      return;
    }
  }
}
void main() {
  LinedLists ls = LinedLists();
  ls.addNode(23);
  ls.addNode(234);
  ls.insertbefore(23, 2);
  ls.display();
}
