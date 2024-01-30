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

  void delete(int value) {
    Node newNode = Node(value);
    if (head == null) {
      print("no element to delete");
      return;
    }
    if (head!.value == value) {
      head = head!.next;
      return;
    }
    Node? current = head;
    while (current!.next!.value != value) {
      current = current.next;
    }
    if (current.next == tail) {
      tail = current;
      current.next = null;
      return;
    }
    current.next = current.next!.next;
    return;
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

  

  void main() {
    LinkedList ls = LinkedList();
    ls.addNode(23);
    ls.addNode(45);
    ls.addNode(43);
    ls.display();
    ls.delete(45);
    ls.display();
  }
}
