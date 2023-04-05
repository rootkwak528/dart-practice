void main(List<String> args) {
  const sets = {91111, 2, 3, 34};
  print(sets);
  print(sets.first);
  print(sets.last);
  final lists = sets.toList();
  lists.sort();
  final sets2 = lists.toSet();
  print(sets2);
}
