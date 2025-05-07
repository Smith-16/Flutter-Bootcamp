import 'dart:io';

void main(){
  print("Enter the year");
  int year = int.parse(stdin.readLineSync().toString());
  if(year%4==0){
    if (year % 100 == 0) {
      // Checking if year is divisible by 400
      // therefore century leap year
      if (year % 400 == 0) print("Leap-Year");
      else print("Not a Leap-Year");
    }
    else print("Leap Year");
  }
  else print("Not a Leap Year");
}