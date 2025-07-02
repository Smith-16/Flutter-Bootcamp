import 'package:flutter/material.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CounterScreen());
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void increment() => setState(() => count++);
  void decrement() => setState(() => count--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Center(
        child: Text("Value: $count", style: const TextStyle(fontSize: 32)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: decrement, child: const Icon(Icons.remove)),
          const SizedBox(width: 10),
          FloatingActionButton(onPressed: increment, child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
