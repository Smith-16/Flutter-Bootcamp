import 'dart:io';

void main() {
  String fileName = 'example.txt';
  File file = File(fileName);

  try {
    // Write to file
    file.writeAsStringSync("Hello, this is a test file.");

    // Read from file
    String content = file.readAsStringSync();
    print("File Content: $content");
  } catch (e) {
    print("File operation failed: $e");
  }
}
