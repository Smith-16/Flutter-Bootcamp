import 'package:flutter/material.dart';

void main() => runApp(const PhotoGalleryApp());

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const PhotoGallery());
  }
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = List.generate(
      12,
          (i) => 'https://picsum.photos/200/300?random=$i',
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Photo Gallery")),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.network(
            images[index],
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }
}
