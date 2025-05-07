import 'dart:io';

void main(){
  print("Enter your number:");
  int input = int.parse(stdin.readLineSync().toString());
  if(input%2==0){
    print("even");
  }
  else{
    print("odd");
  }

}