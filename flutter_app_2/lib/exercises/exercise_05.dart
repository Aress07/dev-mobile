import 'package:flutter/material.dart';

void main() => runApp(const Exercise05());

class Exercise05 extends StatefulWidget {
  const Exercise05({super.key});

  @override
  State<Exercise05> createState() => _Exercise05State();
}

class _Exercise05State extends State<Exercise05> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tasks = [];

  void _addTask() {
    if (_controller.text.isEmpty) return;
    setState(() {
      _tasks.add(_controller.text);
      _controller.clear();
    });
  }

  void _removeTask(int index) {
    setState(() => _tasks.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mini todo list', style: TextStyle(color: Colors.blue)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        labelText: 'Your Input',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _addTask,
                    child: const Text('Ajouter'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(_tasks[index]),
                  onTap: () => _removeTask(index),
                  // trailing: const Icon(Icons.delete, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}