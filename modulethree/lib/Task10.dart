import 'package:flutter/material.dart';

void main() => runApp(const CartApp());

class CartApp extends StatelessWidget {
  const CartApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CartScreen(),
    );
  }
}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int cartCount = 0;

  void addToCart() {
    setState(() => cartCount++);
  }

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (i) => "Item ${i + 1}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
        actions: [Center(child: Text("Cart: $cartCount  "))],
      ),
      body: ListView(
        children: items.map((item) {
          return ListTile(
            title: Text(item),
            trailing: ElevatedButton(
              onPressed: addToCart,
              child: const Text("Add to Cart"),
            ),
          );
        }).toList(),
      ),
    );
  }
}
