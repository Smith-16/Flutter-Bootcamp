import 'dart:io';

void main(){
  const pi = 3.14;
  print("Enter radius of the circle");
  double radius = double.parse(stdin.readLineSync().toString());
  double circ = pi * radius * 2;
  double area = pi * radius * radius;
  print("The circumference of the circle will be: $circ");
  print("The area of the circle will be: $area");
}