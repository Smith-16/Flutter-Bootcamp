import 'dart:io';

void main(){
  print("Enter Number");
  int num = int.parse(stdin.readLineSync().toString());
  if(num>=0) print("Positive");
  else print("Negative");
}