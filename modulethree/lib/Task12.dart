import 'package:flutter/material.dart';

void main() => runApp(const ToggleApp());

class ToggleApp extends StatelessWidget {
  const ToggleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const ToggleScreen());
  }
}

class ToggleScreen extends StatefulWidget {
  const ToggleScreen({super.key});
  @override
  State<ToggleScreen> createState() => _ToggleScreenState();
}

class _ToggleScreenState extends State<ToggleScreen> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(title: const Text("Toggle Background")),
      body: Center(
        child: Switch(
          value: isDark,
          onChanged: (value) => setState(() => isDark = value),
        ),
      ),
    );
  }
}
