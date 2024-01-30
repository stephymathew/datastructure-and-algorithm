class Node {
  int? value;
  Node? next;
  Node(int value) {
    this.value = value;
  }
}

class LinkedList {
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

  void display() {
    Node? curremt = head;
    while (curremt != null) {
      print(curremt.value);
      curremt = curremt.next;
    }
  }

  void middle() {
    int length = 0;
    Node? current = head;
    while (current != null) {
      current = current.next;
      length++;
    }
    int i = 0;
    Node? current2 = head;
    if (i < length / 2 - 1) {
      current2 = current2!.next;
      length++;
    }
    current2!.next = current2.next!.next;
  }
}

void main() {
  LinkedList l = LinkedList();
  l.addNode(23);
  l.addNode(43);
  l.addNode(320);
  l.display();
  l.middle();
  // 2l.display();
}
