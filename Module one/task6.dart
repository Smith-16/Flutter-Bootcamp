import 'dart:io';

void main(){
  print("Enter Principal Amount");
  int principal = int.parse(stdin.readLineSync().toString());
  print("Enter Rate of interest percentage");
  var rate = double.parse(stdin.readLineSync().toString());
  print("Enter amount of time in years");
  var time = double.parse(stdin.readLineSync().toString());
  var ans = (principal*rate*time)/100;
  print("Simple Interest will be $ans");
}