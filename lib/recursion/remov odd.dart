List oddremove(List list) {
  if (list.isEmpty) {
    return list;
  }
  var firstelement = list[0];
  var restlist = list.sublist(1);

  var filteredlist = oddremove(restlist);
  if (firstelement % 2 != 0) {
    return filteredlist;
  } else {
    return [firstelement, ...filteredlist];
  }
}

void main() {
  List orginallist = [1, 2, 3, 4, 5, 6, 7, 8];
  List without = oddremove(orginallist);
  print(without);
}
