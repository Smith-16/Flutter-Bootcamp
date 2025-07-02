import 'dart:io';
import 'dart:math';

void main() {
  int secret = Random().nextInt(100) + 1;

  String Function(int) hint = (guess) =>
  guess < secret ? "Too low!" : guess > secret ? "Too high!" : "Correct!";

  while (true) {
    stdout.write("Guess the number (1-100): ");
    int guess = int.parse(stdin.readLineSync()!);
    String result = hint(guess);
    print(result);
    if (result == "Correct!") break;
  }
}
