import 'package:flutter/material.dart';

void main() => runApp(const CustomListTileApp());

class CustomListTileApp extends StatelessWidget {
  const CustomListTileApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CustomListTileScreen());
  }
}

class CustomListTileScreen extends StatelessWidget {
  const CustomListTileScreen({super.key});

  final List<String> items = const ["Item A", "Item B", "Item C"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Styled List")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: const Icon(Icons.label, color: Colors.blue),
            title: Text(items[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                // Add delete functionality if needed
              },
            ),
          );
        },
      ),
    );
  }
}
