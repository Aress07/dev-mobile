import 'package:flutter/material.dart';

class Exercise02 extends StatelessWidget {
  const Exercise02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 2 Flutter',
            style: TextStyle(color: Colors.blue)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bienvenue a flutter',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            Image.network(
              'https://i.pinimg.com/webp/736x/cd/da/f0/cddaf02f39a1c4a1f3975d16091e59ba.webp',
              width: 200,
            ),
            ElevatedButton(
              onPressed: () => print('Bouton clique!'),
              child: const Text('Cliquez ici'),
            ),
          ],
        ),
      ),
    );
  }
}
