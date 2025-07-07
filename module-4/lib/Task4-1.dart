import 'package:flutter/material.dart';

void main() => runApp(const MultiScreenApp());

class MultiScreenApp extends StatelessWidget {
  const MultiScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Screen App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/products': (context) => const ProductListScreen(),
        '/details': (context) => const ProductDetailsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: ElevatedButton(
          child: const Text("View Products"),
          onPressed: () => Navigator.pushNamed(context, '/products'),
        ),
      ),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product List")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Product 1"),
            onTap: () => Navigator.pushNamed(context, '/details'),
          ),
          ListTile(
            title: const Text("Product 2"),
            onTap: () => Navigator.pushNamed(context, '/details'),
          ),
        ],
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Details")),
      body: const Center(
        child: Text("Here are the product details."),
      ),
    );
  }
}
