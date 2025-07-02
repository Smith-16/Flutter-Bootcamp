import 'dart:io';

class Calc {
  var ans;

  Calc(var num1, var num2, var conversion) {
    switch (conversion) {
      case 1:
        ans = num1 + num2;
        break;
      case 2:
        ans = num1 - num2;
        break;
      case 3:
        ans = num1 * num2;
        break;
      case 4:
        ans = num1 / num2;
        break;
      default:
        print("Invalid choice");
        return;
    }

    print("Result: $ans");
  }
}

void main() {
  print("Choose"
      "\n1 for addition"
      "\n2 for subtraction"
      "\n3 for multiplication"
      "\n4 for division");

  int choice = int.parse(stdin.readLineSync().toString());

  print("Enter first number");
  int num1 = int.parse(stdin.readLineSync().toString());

  print("Enter second number");
  int num2 = int.parse(stdin.readLineSync().toString());

  Calc c1 = Calc(num1, num2, choice);
}
