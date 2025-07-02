import 'dart:io';

void main() {
  // Input list of integers
  List<String> words = [];
  List<String> words2 = [];
  print("Enter integers, one per line. Enter 'done' when finished:");

  while (true) {
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') {
      break;
    }
    try {
      words.add((input.toString()));
    } catch (e) {
      print("Invalid input. Please enter an integer or 'done'.");
    }
  }
  words.sort();
  Set<String> wordset = {};
  wordset.addAll(words);
  print(wordset);
}