import 'package:flutter/material.dart';

void main() => runApp(const NamedRouteApp());

class NamedRouteApp extends StatelessWidget {
  const NamedRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        '/details': (_) => const DetailsScreen(),
        '/settings': (_) => const SettingsScreen(),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("Go to Details"),
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
          ElevatedButton(
            child: const Text("Go to Settings"),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: const Center(child: Text("This is the Details Screen")),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: const Center(child: Text("Settings go here")),
    );
  }
}
