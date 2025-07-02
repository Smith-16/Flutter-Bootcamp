import 'package:flutter/material.dart';

void main() => runApp(const InfiniteScrollApp());

class InfiniteScrollApp extends StatelessWidget {
  const InfiniteScrollApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const InfiniteList());
  }
}

class InfiniteList extends StatefulWidget {
  const InfiniteList({super.key});
  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  final List<int> items = List.generate(20, (index) => index);
  final ScrollController _controller = ScrollController();

  void loadMore() {
    final nextItems = List.generate(10, (index) => items.length + index);
    setState(() => items.addAll(nextItems));
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Infinite List")),
      body: ListView.builder(
        controller: _controller,
        itemCount: items.length,
        itemBuilder: (_, index) {
          return ListTile(title: Text("Item ${items[index]}"));
        },
      ),
    );
  }
}
