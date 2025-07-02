import 'package:flutter/material.dart';

void main() => runApp(const StyledTextApp());

class StyledTextApp extends StatelessWidget {
  const StyledTextApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Bold Red Text",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Italic Blue Text",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
