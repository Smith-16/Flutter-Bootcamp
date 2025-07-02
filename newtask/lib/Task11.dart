import 'dart:io';
void main(){
  print("Enter Your Number");
  int input = int.parse(stdin.readLineSync().toString());
  int first = 0, second = 1;
  while (first <= input) {
    print(first);
    int next = first + second;
    first = second;
    second = next;
  }
}