import 'package:flutter/material.dart';

void main() => runApp(const DrawerApp());

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeDrawerScreen());
  }
}

class HomeDrawerScreen extends StatefulWidget {
  const HomeDrawerScreen({super.key});
  @override
  State<HomeDrawerScreen> createState() => _HomeDrawerScreenState();
}

class _HomeDrawerScreenState extends State<HomeDrawerScreen> {
  int selectedScreen = 0;

  final List<Widget> screens = const [
    Center(child: Text("Home")),
    Center(child: Text("Profile")),
    Center(child: Text("Settings")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Drawer Navigation")),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Navigation", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () => setState(() {
                selectedScreen = 0;
                Navigator.pop(context);
              }),
            ),
            ListTile(
              title: const Text("Profile"),
              onTap: () => setState(() {
                selectedScreen = 1;
                Navigator.pop(context);
              }),
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () => setState(() {
                selectedScreen = 2;
                Navigator.pop(context);
              }),
            ),
          ],
        ),
      ),
      body: screens[selectedScreen],
    );
  }
}
