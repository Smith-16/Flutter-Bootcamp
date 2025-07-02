import 'package:flutter/material.dart';

void main() => runApp(const CardFabApp());

class CardFabApp extends StatelessWidget {
  const CardFabApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CardFabScreen());
  }
}

class CardFabScreen extends StatelessWidget {
  const CardFabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(20),
              child: Container(
                width: 300,
                height: 200,
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Card Title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text("This is a description inside the card."),
                  ],
                ),
              ),
            ),
            const Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
