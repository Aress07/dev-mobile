import 'package:flutter/material.dart';
import 'exercises/exercise_01.dart';
import 'exercises/exercise_02.dart';
import 'exercises/exercise_03.dart';
import 'exercises/exercise_04.dart';
import 'exercises/exercise_05.dart';
import 'exercises/exercise_06.dart';

void main() => runApp(const SandboxApp());

class SandboxApp extends StatelessWidget {
  const SandboxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercises',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ExerciseMenu(),
    );
  }
}

class ExerciseMenu extends StatelessWidget {
  const ExerciseMenu({super.key});

  static const exercises = [
    ('Exercice 1 - Compteur', Exercise01()),
    ('Exercice 2 - Image & Bouton', Exercise02()),
    ('Exercice 3 - Interface avec Row et Column', Exercise03()),
    ('Exercice 4 - Counter', Exercise04()),
    ('Exercice 5 - To Do List', Exercise05()),
    ('Exercice 6 - A Rendre', Exercise06())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mes Exercices Flutter')),
      body: ListView.separated(
        itemCount: exercises.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          leading: CircleAvatar(child: Text('${i + 1}')),
          title: Text(exercises[i].$1),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => exercises[i].$2),
          ),
        ),
      ),
    );
  }
}