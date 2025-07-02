import 'package:flutter/material.dart';

void main() => runApp(const ImageGridApp());

class ImageGridApp extends StatelessWidget {
  const ImageGridApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = List.generate(
      12,
          (index) => 'https://picsum.photos/200?random=$index',
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Image Grid")),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            children: imageUrls
                .map((url) => Image.network(url, fit: BoxFit.cover))
                .toList(),
          ),
        ),
      ),
    );
  }
}
