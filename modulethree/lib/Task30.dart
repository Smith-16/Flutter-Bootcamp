import 'package:flutter/material.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const ProfileScreen());
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.blueAccent, height: 200),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                ),
                const SizedBox(height: 10),
                const Text("John Doe", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const Text("Mobile App Developer"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
