import 'dart:collection';

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

  void insertAfter(int nextTo, int value) {
    Node newNode = Node(value);
    if (head == null) {
      print("list is empty");
      return;
    }
    if (tail!.value == nextTo) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    Node? current = head;
    while (current!.value != nextTo) {
      current = current.next;
    }
    newNode.next = current.next;
    current.next = newNode;
    return;
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
  ls.insertAfter(23, 2);
}
