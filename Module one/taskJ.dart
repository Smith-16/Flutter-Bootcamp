import 'dart:io';

void main(){
  print("Enter Your Number");
  int input = int.parse(stdin.readLineSync().toString());
  int first = input % 10;
  while(input>9){
    input = input ~/ 10;
  }
  print(first + input);
}