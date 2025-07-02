import 'package:flutter/material.dart';

void main() => runApp(const FeedbackApp());

class FeedbackApp extends StatelessWidget {
  const FeedbackApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const FeedbackForm());
  }
}

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});
  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  String selectedCategory = "Bug Report";

  final categories = ["Bug Report", "Feature Request", "Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: "Name")),
            const TextField(
              decoration: InputDecoration(labelText: "Comments"),
              maxLines: 3,
            ),
            DropdownButton<String>(
              value: selectedCategory,
              items: categories
                  .map((cat) => DropdownMenuItem(
                value: cat,
                child: Text(cat),
              ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder submit
              },
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
