import 'package:flutter/material.dart';

void main() => runApp(const ImageSwitcherApp());

class ImageSwitcherApp extends StatelessWidget {
  const ImageSwitcherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const ImageSwitcher());
  }
}

class ImageSwitcher extends StatefulWidget {
  const ImageSwitcher({super.key});
  @override
  State<ImageSwitcher> createState() => _ImageSwitcherState();
}

class _ImageSwitcherState extends State<ImageSwitcher> {
  int imageIndex = 0;
  final List<String> urls = [
    'https://picsum.photos/id/237/400/300',
    'https://picsum.photos/id/238/400/300',
    'https://picsum.photos/id/239/400/300',
  ];

  void changeImage() {
    setState(() {
      imageIndex = (imageIndex + 1) % urls.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Switcher")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(urls[imageIndex]),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: changeImage, child: const Text("Change Image"))
        ],
      ),
    );
  }
}
