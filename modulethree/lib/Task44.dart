import 'package:flutter/material.dart';

void main() => runApp(const AvatarBadgeApp());

class AvatarBadgeApp extends StatelessWidget {
  const AvatarBadgeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const AvatarScreen());
  }
}

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Avatar Badge")),
      body: const Center(
        child: AvatarBadge(
          imageUrl: "https://picsum.photos/200",
          isOnline: true,
        ),
      ),
    );
  }
}

class AvatarBadge extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;

  const AvatarBadge({super.key, required this.imageUrl, required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(radius: 40, backgroundImage: NetworkImage(imageUrl)),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isOnline ? Colors.green : Colors.red,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
