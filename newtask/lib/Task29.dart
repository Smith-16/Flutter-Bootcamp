void main() {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [3, 4, 5];
  List<int> list3 = [5, 6, 7];

  List<int> combined = [...list1, ...list2, ...list3];
  List<int> uniqueSorted = combined.toSet().toList()..sort();

  print("Combined unique sorted list: $uniqueSorted");
}
