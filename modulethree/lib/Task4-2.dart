import 'package:flutter/material.dart';

void main() => runApp(const DrawerApp());

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navigation',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedScreen = 0;

  final screens = [
    const Center(child: Text("Home Screen")),
    const Center(child: Text("Profile Screen")),
    const Center(child: Text("Settings Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation Drawer")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () {
                setState(() => selectedScreen = 0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Profile"),
              onTap: () {
                setState(() => selectedScreen = 1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () {
                setState(() => selectedScreen = 2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: screens[selectedScreen],
    );
  }
}
