import 'package:flutter/material.dart';

class Exercise01 extends StatefulWidget {
  const Exercise01({super.key});

  @override
  State<Exercise01> createState() => _Exercise01State();
}

class _Exercise01State extends State<Exercise01> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Ma première application flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello flutter',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: null,
              child: const Text('Clique Ici'),
            ),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}