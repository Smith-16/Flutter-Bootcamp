import 'package:flutter/material.dart';

void main() => runApp(const ProductListingApp());

class ProductListingApp extends StatelessWidget {
  const ProductListingApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProductListScreen());
  }
}

class Product {
  final String name;
  final double price;
  final String image;

  const Product(this.name, this.price, this.image);
}

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<Product> products = [
    const Product("Watch", 99.0, "https://picsum.photos/id/1015/100/100"),
    const Product("Shoes", 120.5, "https://picsum.photos/id/1016/100/100"),
    const Product("Bag", 75.0, "https://picsum.photos/id/1017/100/100"),
    const Product("Jacket", 150.0, "https://picsum.photos/id/1018/100/100"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Listing")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: products.map((product) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                width: 150,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(product.image, height: 100, fit: BoxFit.cover),
                    Text(product.name, style: const TextStyle(fontSize: 16)),
                    Text("\$${product.price}", style: const TextStyle(color: Colors.green)),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
