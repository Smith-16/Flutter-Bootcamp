import 'dart:io';

void main() {
  try {
    stdout.write("Enter numerator: ");
    int num1 = int.parse(stdin.readLineSync()!);

    stdout.write("Enter denominator: ");
    int num2 = int.parse(stdin.readLineSync()!);

    double result = num1 / num2;
    print("Result: $result");
  } catch (e) {
    print("Error: Cannot divide by zero or invalid input.");
  }
}