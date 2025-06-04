import 'dart:io';

void main() {
  // Input list of integers
  List<int> numbers = [];
  print("Enter integers, one per line. Enter 'done' when finished:");

  while (true) {
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') {
      break;
    }
    try {
      numbers.add(int.parse(input));
    } catch (e) {
      print("Invalid input. Please enter an integer or 'done'.");
    }
  }

  // Sort in ascending order (Bubble Sort)
  List<int> ascendingSorted = [...numbers]; // Create a copy to avoid modifying the original
  bubbleSort(ascendingSorted);

  // Sort in descending order (Modified Bubble Sort)
  List<int> descendingSorted = [...numbers];
  bubbleSortDescending(descendingSorted);

  // Print the sorted lists
  print("\nOriginal List: $numbers");
  print("Ascending Sorted List: $ascendingSorted");
  print("Descending Sorted List: $descendingSorted");
}

// Bubble Sort for ascending order
void bubbleSort(List<int> list) {
  int n = list.length;
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < n - 1; i++) {
      if (list[i] > list[i + 1]) {
        // Swap elements
        int temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
}

// Bubble Sort for descending order
void bubbleSortDescending(List<int> list) {
  int n = list.length;
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < n - 1; i++) {
      if (list[i] < list[i + 1]) { // Changed comparison
        // Swap elements
        int temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
}