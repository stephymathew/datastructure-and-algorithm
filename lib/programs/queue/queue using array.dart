class queue {
  List<int> array = [];
  void enqueue(int data) {
    array.add(data);
  }

  void dequeue() {
    if (array.isEmpty) {
      print("it is empty");
    } else {
      array.removeAt(0);
    }
  }

  void printdata() {
    print(array);
  }
}

void main() {
  queue q = queue();
  q.enqueue(4);
  q.enqueue(3);
  q.enqueue(4);
  q.dequeue();
  q.printdata();
}
