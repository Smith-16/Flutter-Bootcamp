import 'dart:io';

void main() {
  Map<String, String> addressBook = {};

  while (true) {
    print("\n1. Add\n2. Update\n3. Remove\n4. View\n5. Exit");
    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter name: ");
        String? name = stdin.readLineSync();
        stdout.write("Enter phone number: ");
        String? phone = stdin.readLineSync();
        addressBook[name!] = phone!;
        break;
      case '2':
        stdout.write("Enter name to update: ");
        String? name = stdin.readLineSync();
        if (addressBook.containsKey(name)) {
          stdout.write("Enter new phone number: ");
          String? phone = stdin.readLineSync();
          addressBook[name!] = phone!;
        } else {
          print("Name not found.");
        }
        break;
      case '3':
        stdout.write("Enter name to remove: ");
        String? name = stdin.readLineSync();
        addressBook.remove(name);
        break;
      case '4':
        addressBook.forEach((name, phone) => print('$name: $phone'));
        break;
      case '5':
        return;
      default:
        print("Invalid choice.");
    }
  }
}
