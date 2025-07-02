import 'package:flutter/material.dart';

void main() => runApp(const TaskManagerApp());

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const TaskManager());
  }
}

class Task {
  String title;
  bool completed;
  Task(this.title, this.completed);
}

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});
  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  final TextEditingController controller = TextEditingController();
  final List<Task> tasks = [];

  void addTask() {
    if (controller.text.isNotEmpty) {
      setState(() {
        tasks.add(Task(controller.text, false));
        controller.clear();
      });
    }
  }

  void toggleTask(int index) {
    setState(() {
      tasks[index].completed = !tasks[index].completed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Manager")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(labelText: "Add Task"),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: addTask,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (_, i) {
                return CheckboxListTile(
                  title: Text(tasks[i].title),
                  value: tasks[i].completed,
                  onChanged: (_) => toggleTask(i),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
