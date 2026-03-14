import 'package:flutter/material.dart';

class Exercise04 extends StatefulWidget {
  const Exercise04({super.key});

  @override
  State<Exercise04> createState() => _Exercise04State();
}

class _Exercise04State extends State<Exercise04> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Exercice 4 Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre de clics : ${_counter}',
                style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
            ElevatedButton(onPressed: () => setState(() => _counter++),
            child: const Text('Cliquez ici'),)
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}