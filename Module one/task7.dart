import 'dart:io';

void main(){
  print("Enter Marks in Physics");
  var phy = double.parse(stdin.readLineSync().toString());
  print("Enter Marks in Chemistry");
  var chem = double.parse(stdin.readLineSync().toString());
  print("Enter Marks in Mathematics");
  var math = double.parse(stdin.readLineSync().toString());
  print("Enter Marks in Biology");
  var bio = double.parse(stdin.readLineSync().toString());
  print("Enter Marks in English");
  var eng = double.parse(stdin.readLineSync().toString());
  var total = phy+chem+bio+math+eng;
  var percentage = (total/500)*100;
  print("Your Total is $total & \nPercentage is $percentage%");
}