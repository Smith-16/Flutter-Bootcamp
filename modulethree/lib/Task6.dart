import 'package:flutter/material.dart';

void main() => runApp(const ProfileCardApp());

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Profile Card")),
        body: Center(
          child: Card(
            elevation: 4,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=3'),
                  ),
                  SizedBox(height: 10),
                  Text("John Doe", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text("Mobile developer with a passion for Flutter."),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
