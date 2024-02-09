class Stack {
  List<int> stack = [];

  void push(int data) {
    stack.add(data);
  }

  int deleteMiddle() {
    if (stack.isEmpty) {
      print("it is empty");
    }
    int stackSize = stack.length;
    int middleindex = stackSize ~/ 2;
    int deletemiddle = stack.removeAt(middleindex);
    return deletemiddle;
  }
}

void main() {
  Stack s = Stack();
  s.push(23);
  s.push(45);
  s.push(34);
  s.deleteMiddle();
  
}
