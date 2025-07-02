import 'dart:io';

void main() {
  try {
    stdout.write("Enter first number: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter second number: ");
    double num2 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter operator (+, -, *, /): ");
    String? op = stdin.readLineSync();

    double result;
    switch (op) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        result = num1 / num2;
        break;
      default:
        throw Exception("Invalid operator");
    }

    print("Result: $result");
  } catch (e) {
    print("Error: Invalid input or operation.");
  }
}
