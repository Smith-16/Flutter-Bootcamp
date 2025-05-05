import 'dart:io';

void main(){
  print("Enter your number");
  int num = int.parse(stdin.readLineSync().toString());
  print("Choose Conversion Type: Press 1 for Celsius to Farenheit OR 2 for Farenheit to Celsius");
  int choice = int.parse(stdin.readLineSync().toString());

}

//
