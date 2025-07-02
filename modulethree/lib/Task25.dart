import 'package:flutter/material.dart';

void main() => runApp(const TodoApp());

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const TodoListScreen());
  }
}

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});
  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> tasks = [];

  void addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        tasks.add(_controller.text);
        _controller.clear();
      });
    }
  }

  void removeTask(int index) {
    setState(() => tasks.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("To-Do List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(labelText: "New Task"),
                  ),
                ),
                IconButton(onPressed: addTask, icon: const Icon(Icons.add)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(tasks[index]),
                  onDismissed: (_) => removeTask(index),
                  background: Container(color: Colors.red),
                  child: ListTile(title: Text(tasks[index])),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
