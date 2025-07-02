import 'package:flutter/material.dart';

void main() => runApp(const BottomNavApp());

class BottomNavApp extends StatelessWidget {
  const BottomNavApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const BottomNavScreen());
  }
}

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

  final List<Widget> tabs = const [
    Center(child: Text("News")),
    Center(child: Text("Messages")),
    Center(child: Text("Profile")),
  ];

  void onTabTapped(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation")),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
