import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const ImageCarouselApp());

class ImageCarouselApp extends StatelessWidget {
  const ImageCarouselApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CarouselScreen());
  }
}

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});
  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  final List<String> _images = [
    'https://picsum.photos/id/1011/400/300',
    'https://picsum.photos/id/1012/400/300',
    'https://picsum.photos/id/1013/400/300',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_controller.hasClients) {
        _currentPage = (_currentPage + 1) % _images.length;
        _controller.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Carousel")),
      body: PageView.builder(
        controller: _controller,
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Image.network(_images[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}
