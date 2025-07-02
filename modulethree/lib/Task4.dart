import 'package:flutter/material.dart';

void main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder login logic
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
