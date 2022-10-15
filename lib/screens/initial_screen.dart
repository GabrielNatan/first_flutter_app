import 'package:flutter/material.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
    bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 32),
            child: Text('Tarefas'),
          ),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 1000),
          child: ListView(children: const [
            Task(
                'Esse é legal',
                'assets/images/bike.webp',
                3),
            Task(
                'Esse é MAIS OU MENOS',
                'assets/images/dash.png',
                2),
            Task(
                'Esse é Chato',
                'assets/images/livro.jpg',
                5),
            Task(
                'Esse é Chato',
                'assets/images/meditar.jpeg',
                4),
            SizedBox(height: 100,)
          ]),
        ),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye),
        ),
      );
  }
}