import 'dart:async';

Future<void> emitNumbers(int count) async {
  for (int i = 1; i <= count; i++) {
    await Future.delayed(Duration(seconds: 1));
    print("Number: $i");
  }
  print("Done emitting numbers.");
}

void main() async {
  await emitNumbers(5);
}
