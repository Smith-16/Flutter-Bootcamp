import 'package:flutter/material.dart';

void main() => runApp(const NameListApp());

class NameListApp extends StatelessWidget {
  const NameListApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> names = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Name List")),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
              onTap: () => print("${names[index]} tapped"),
            );
          },
        ),
      ),
    );
  }
}
