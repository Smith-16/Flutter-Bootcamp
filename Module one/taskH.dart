import 'dart:io';

void main(){
  print("Enter Your Number");
  int input = int.parse(stdin.readLineSync().toString());
  int max = 0;
  int cur = 0;
  while(input>0){
    cur = input % 10;
    if(cur>max){
      max = cur;
    }
    input = input ~/ 10;
  }
  print(max);
}