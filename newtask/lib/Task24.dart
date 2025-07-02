import 'dart:io';

void main() {
  List<int> numbers = [];

  stdout.write("Enter how many numbers you want to input: ");
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < count; i++) {
    try {
      stdout.write("Enter number ${i + 1}: ");
      int num = int.parse(stdin.readLineSync()!);
      numbers.add(num);
    } catch (e) {
      print("Invalid input. Please enter an integer.");
      i--; // retry this iteration
    }
  }

  print("You entered: $numbers");
}
