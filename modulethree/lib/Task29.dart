import 'package:flutter/material.dart';

void main() => runApp(const OverlayApp());

class OverlayApp extends StatelessWidget {
  const OverlayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const OverlayScreen());
  }
}

class OverlayScreen extends StatelessWidget {
  const OverlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Overlay Image")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              "https://picsum.photos/300",
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.black.withOpacity(0.4),
            ),
            const Text(
              "Overlay Text",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
