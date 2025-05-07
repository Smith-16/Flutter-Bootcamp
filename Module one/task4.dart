import 'dart:io';

void main(){
  print("Enter Radius");
  int rad = int.parse(stdin.readLineSync().toString());
  var ans = 3.14*rad*rad;
  print("Area of a circle with radius of $rad will be $ans");
}