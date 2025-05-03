import 'dart:io';

void main(){

  print("Enter Your Number");
  int num = int.parse(stdin.readLineSync().toString());

  int fact=1;
  for(int i=1;i<=num;i++){
    fact*=i;
  }
  print(fact);
}