import 'dart:async';

Future<String> fetchUser(int id) async {
  await Future.delayed(Duration(seconds: 1));
  return "User $id data";
}

void main() async {
  List<Future<String>> userFutures = [
    fetchUser(1),
    fetchUser(2),
    fetchUser(3),
  ];

  print("Fetching users...");
  List<String> users = await Future.wait(userFutures);
  print("All users loaded:");
  users.forEach(print);
}
