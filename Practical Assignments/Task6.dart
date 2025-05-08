import 'dart:io';

void main(){
  print("Enter your score from 100");
  int score = int.parse(stdin.readLineSync().toString());
  if(100>score && score>=90) print("A");
  else if(score<=89 && score>=80) print("B");
  else if(score<=79 && score>=70) print("C");
  else if(score<=69 && score>=60) print("D");
  else if(score<=59 && score>=0) print("F");
  else print("Invalid input");
}