import 'package:flutter/material.dart';

void main() => runApp(const CustomButtonApp());

class CustomButtonApp extends StatelessWidget {
  const CustomButtonApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CustomButtonScreen());
  }
}

class CustomButtonScreen extends StatelessWidget {
  const CustomButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Button")),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "Upload",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.cloud_upload, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
