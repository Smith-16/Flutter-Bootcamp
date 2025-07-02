import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String display = "";
  double result = 0;

  void onButtonPressed(String value) {
    setState(() {
      if (value == "=") {
        try {
          result = double.parse(display);
          display = result.toString();
        } catch (e) {
          display = "Error";
        }
      } else if (value == "C") {
        display = "";
      } else {
        display += value;
      }
    });
  }

  Widget calcButton(String label) {
    return ElevatedButton(
      onPressed: () => onButtonPressed(label),
      child: Text(label, style: const TextStyle(fontSize: 20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(display, style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ...["1", "2", "3", "+", "4", "5", "6", "-", "7", "8", "9", "*", "C", "0", "=", "/"]
                    .map((label) => SizedBox(width: 60, child: calcButton(label))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
