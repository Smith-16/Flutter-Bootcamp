import 'dart:io';

void main() {
  stdout.write("Enter file path: ");
  String? path = stdin.readLineSync();

  try {
    File file = File(path!);
    String contents = file.readAsStringSync();
    print("File contents:\n$contents");
  } catch (e) {
    print("Error: File not found or cannot be read.");
  }
}