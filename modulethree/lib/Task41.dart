import 'package:flutter/material.dart';

void main() => runApp(const RatingApp());

class RatingApp extends StatelessWidget {
  const RatingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const RatingScreen());
  }
}

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  int rating = 0;

  void setRating(int value) {
    setState(() => rating = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rating Widget")),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return IconButton(
              icon: Icon(
                index < rating ? Icons.star : Icons.star_border,
                color: Colors.amber,
              ),
              onPressed: () => setRating(index + 1),
            );
          }),
        ),
      ),
    );
  }
}
