import 'dart:io';

bool isPalindrome(String word) {
  for (int i = 0; i < word.length ~/ 2; i++) {
    if (word[i] != word[word.length - i - 1]) return false;
  }
  return true;
}
void main(){

  print("Enter Word");
  String word = stdin.readLineSync().toString();
  bool calc = isPalindrome(word);
  if(calc) print(calc);
  else print(calc);
}