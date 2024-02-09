class Stack {
  List<int> stackArray = [];

  void push(int data) {
    stackArray.add(data);
  }

  int pop() {
    if (isEmpty()) {
      throw Exception("Stack is empty");
    }
    return stackArray.removeLast();
  }

  bool isEmpty() {
    return stackArray.isEmpty;
  }

  bool isValidParentheses(String s) {
    Map<String, String> pairs = {'(': ')', '{': '}', '[': ']'};
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      String current = s[i];
      if (pairs.containsKey(current)) {
        stack.add(current); 
      } else if (stack.isEmpty || pairs[stack.removeLast()] != current) {
        return false; 
      }
    }

    // Return true if the stack is empty (all parentheses matched)
    return stack.isEmpty;
  }

  void main() {
    String testString1 = "(){}[]";
    String testString2 = "({[]})";
    String testString3 = "({[}])";

    print("$testString1: ${isValidParentheses(testString1)}");
    print("$testString2: ${isValidParentheses(testString2)}");
    print("$testString3: ${isValidParentheses(testString3)}");
  }
}
