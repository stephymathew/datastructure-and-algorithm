import 'package:flutter/foundation.dart';

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

class LinkedList {
  Node? head, tail;
  void addNode(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
      return;
    }
    tail!.next = newNode;
    newNode.prev = tail;
    tail = newNode;
  }

  void display() {
    if (head == null) {
      print("list is null");
    }
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
    return;
  }
}

void disply() {
  LinkedList ls = LinkedList();
  ls.addNode(23);
  ls.addNode(234);
  ls.display();
}
