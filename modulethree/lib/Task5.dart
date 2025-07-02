import 'package:flutter/material.dart';

void main() => runApp(const RowLayoutApp());

class RowLayoutApp extends StatelessWidget {
  const RowLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Row Layout")),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.red, height: 100),
            ),
            Expanded(
              flex: 2,
              child: Container(color: Colors.green, height: 100),
            ),
            Expanded(
              flex: 1,
              child: Container(color: Colors.blue, height: 100),
            ),
          ],
        ),
      ),
    );
  }
}
