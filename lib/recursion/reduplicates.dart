List duplicates(List list) {
  if (list.isEmpty) {
    return list;
  }
  var firstelement = list[0];
  var restelement = list.sublist(1);
  var filterlist = duplicates(firstelement);
  if (filterlist.contains(filterlist)) {
    return filterlist;
  } else {
    return [firstelement, ...filterlist];
  }
}

void main() {
  List orginal = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List dup = duplicates(orginal);
  print(orginal);
}
