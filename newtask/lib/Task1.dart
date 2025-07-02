import 'dart:io';

void main(){
  print("Enter Your Name");
  String name = stdin.readLineSync().toString();
  print("Enter Your Age");
  int age = int.parse(stdin.readLineSync().toString());
  int remaining = 100 - age;
  print("Hello $name, you have $remaining years left until you turn 100!");
}