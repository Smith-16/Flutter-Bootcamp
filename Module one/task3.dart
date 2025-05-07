import 'dart:io';

void main(){
  print("Enter a number");
  int num = int.parse(stdin.readLineSync().toString());
  int square = num*num;
  int cube = num*num*num;

  print("Square of your number is $square,"
      "\nCube of your number is $cube");
}