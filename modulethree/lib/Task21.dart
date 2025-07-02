import 'package:flutter/material.dart';

void main() => runApp(const TwoScreenApp());

class TwoScreenApp extends StatelessWidget {
  const TwoScreenApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Second Screen"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: const Center(child: Text("Welcome to the second screen!")),
    );
  }
}
