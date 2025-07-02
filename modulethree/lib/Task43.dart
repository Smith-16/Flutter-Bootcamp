import 'package:flutter/material.dart';

void main() => runApp(const ProfileCardApp());

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const ProfileCardScreen());
  }
}

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Card")),
      body: const Center(
        child: ProfileCard(
          name: "Alice Smith",
          bio: "Flutter Developer at TechCorp",
          imageUrl: "https://picsum.photos/200",
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String bio;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.bio,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(backgroundImage: NetworkImage(imageUrl), radius: 40),
            const SizedBox(height: 10),
            Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(bio, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
