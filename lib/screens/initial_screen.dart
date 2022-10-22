import 'package:flutter/material.dart';
import 'package:primeiro_app/data/task_inherited.dart';
import 'package:primeiro_app/screens/form_screen.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 32),
            child: Text('Tarefas'),
          ),
        ),
        body: ListView(children: TaskInherited.of(context).taskList),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> const FormScreen())
            );
          },
          child: const Icon(Icons.add),
        ),
      );
  }
}

// const [
         
//           SizedBox(height: 100,)
//         ]