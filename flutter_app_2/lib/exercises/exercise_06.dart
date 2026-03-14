import 'package:flutter/material.dart';

void main() => runApp(const Exercise06());

class Exercise06 extends StatefulWidget {
  const Exercise06({super.key});

  
  @override
  State<Exercise06> createState() => Exercise06State();
}

class Exercise06State extends State<Exercise06> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mini Quiz', style: TextStyle(color: Colors.blue)),
      ),
      body: Center(
        child: Column(
            children: [
              Text('Quelle est la capitale du Maroc?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
              ElevatedButton(onPressed: () => setState(() => _isVisible = true), child: Text("Rabat")),
              ElevatedButton(onPressed: () => setState(() => _isVisible = false), child: Text("Casablanca")),
              ElevatedButton(onPressed: () => setState(() => _isVisible = false), child: Text("Marrakech")),
              if (_isVisible)
                const Text('Bonne Reponse')
              else
                const Text('Mauvaise Reponse')
            ]
        ),
      )
    );

  }
}