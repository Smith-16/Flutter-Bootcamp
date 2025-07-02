import 'package:flutter/material.dart';

void main() => runApp(const ProgressBarApp());

class ProgressBarApp extends StatelessWidget {
  const ProgressBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const ProgressBarScreen());
  }
}

class ProgressBarScreen extends StatelessWidget {
  const ProgressBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Progress Bar")),
      body: const Center(
        child: ProgressBar(percentage: 0.65),
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final double percentage;

  const ProgressBar({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: percentage,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Center(
            child: Text("${(percentage * 100).toInt()}%"),
          ),
        ],
      ),
    );
  }
}
