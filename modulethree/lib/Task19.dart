import 'package:flutter/material.dart';

void main() => runApp(const SearchApp());

class SearchApp extends StatelessWidget {
  const SearchApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const SearchScreen());
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> allSuggestions = [
    "Apple",
    "Banana",
    "Cherry",
    "Grapes",
    "Orange",
    "Mango",
    "Pineapple"
  ];
  List<String> filtered = [];

  void updateList(String query) {
    setState(() {
      filtered = allSuggestions
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    filtered = allSuggestions;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Example")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: updateList,
              decoration: const InputDecoration(
                labelText: "Search",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(filtered[index]));
              },
            ),
          )
        ],
      ),
    );
  }
}
