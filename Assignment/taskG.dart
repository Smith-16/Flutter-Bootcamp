import 'dart:io';

void main(){
  print("Enter Your Number");
  int input = int.parse(stdin.readLineSync().toString());
  int output = 0;
  while (input > 0) {
    output = (output * 10) + (input % 10);
    input = input~/10;
  }
  print(output);
}