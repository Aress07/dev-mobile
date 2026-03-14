import 'package:flutter/material.dart';

class Exercise03 extends StatelessWidget {
  const Exercise03({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise 3 Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 3 Flutter', style: TextStyle(color: Colors.blue))
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text('Choisis une couleur',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () => print('Vous avez choisi le rouge'), child: const Text('Rouge')),
                  ElevatedButton(onPressed: () => print('Vous avez choisi le vert'), child: const Text('Vert')),
                  ElevatedButton(onPressed: () => print('Vous avez choisi le bleu'), child: const Text('Bleu')),
                ]
              ),
                const SizedBox(height: 20),
                const Text(''),
            ],
          )
        ),
      )
    );
  }
}
