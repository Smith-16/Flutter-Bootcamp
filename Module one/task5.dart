import 'dart:io';

void main(){
  print("Enter Height of triangle");
  int height = int.parse(stdin.readLineSync().toString());
  print("Enter Base of triangle");
  int base = int.parse(stdin.readLineSync().toString());
  var ans = 0.5*base*height;
  print("Area of the triangle will be $ans");
}