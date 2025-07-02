import 'dart:io';

void main(){
  print("Enter your number");
  int num = int.parse(stdin.readLineSync().toString());
  String yes = "is a prime number";
  String no = "is not a prime number";
  bool isPrime =true;
  if(num<=1){
    isPrime = false;
  }
  else{
    for (int i = 2; i < num; i++)
      if (num % i == 0){
        isPrime =false;
      }
  }
  if(isPrime) print("$num $yes");
  else print("$num $no");
}