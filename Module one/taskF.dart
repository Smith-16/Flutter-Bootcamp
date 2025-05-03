import 'dart:io';

void main(){

  print("Enter Your Number");
  int input = int.parse(stdin.readLineSync().toString());

  int i = 1;
  for(i=1;i<=10;i++){
    print("$input X $i = ");print(input*i);
  }
}