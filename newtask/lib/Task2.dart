import 'dart:io';
class Calc{
  var ans;
  Calc(var num,var conversion){
    if(conversion==1) ans = (num * 9/5) + 32;
    else if(conversion==2) ans = (num - 32) * 5/9;
    print(ans);
  }

}
void main(){
  print("Choose Conversion Type: Press 1 for Celsius to Farenheit OR 2 for Farenheit to Celsius");
  int choice = int.parse(stdin.readLineSync().toString());
  print("Enter your number");
  int num = int.parse(stdin.readLineSync().toString());
  Calc c1 = Calc(num,choice);
}

//
