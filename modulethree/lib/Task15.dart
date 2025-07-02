import 'package:flutter/material.dart';

void main() => runApp(const AssetImageApp());

class AssetImageApp extends StatelessWidget {
  const AssetImageApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const LocalImageScreen());
  }
}

class LocalImageScreen extends StatelessWidget {
  const LocalImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Asset Image Demo")),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text("BoxFit.cover"),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/sample.jpeg', fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            const Text("BoxFit.contain"),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/sample.jpeg', fit: BoxFit.contain),
            ),
          ],
        ),
      ),
    );
  }
}
