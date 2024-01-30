
class Binary {
  void search() {
    int element = 5;
    print(findfact(element));
  }

  int findfact(int element) {
    if (element <= 1) {
      return 1;
    }
    return element * findfact(element - 1);
  }
}

void main() {
  Binary b = Binary();
  b.search();
}
