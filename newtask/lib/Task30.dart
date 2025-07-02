List<double> transformList(List<int> list, double Function(int) operation) {
  return list.map(operation).toList();
}

void main() {
  List<int> numbers = [2, 4, 6];

  List<double> squares = transformList(numbers, (n) => n * n.toDouble());
  List<double> cubes = transformList(numbers, (n) => n * n * n.toDouble());
  List<double> halves = transformList(numbers, (n) => n / 2);

  print("Squares: $squares");
  print("Cubes: $cubes");
  print("Halves: $halves");
}
