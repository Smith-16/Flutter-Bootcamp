import 'dart:io';

void main(){
  print("Enter your word");
  String input = stdin.readLineSync().toString();
  Map<String, int> frequency = {};

  for (var char in input.split('')) {
    frequency[char] = (frequency[char] ?? 0) + 1;
  }
  print(frequency);
}