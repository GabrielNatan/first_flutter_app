import 'package:flutter/material.dart';
import 'package:primeiro_app/components/task.dart';

class TaskInherited extends InheritedWidget{
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child:child);

  final List<Task> taskList = [
      const Task(
              'Esse é legal',
              'assets/images/bike.webp',
              3),
          const Task(
              'Esse é MAIS OU MENOS',
              'assets/images/dash.png',
              2),
          const Task(
              'Esse é Chato',
              'assets/images/livro.jpg',
              5),
          const Task(
              'Esse é Chato',
              'assets/images/meditar.jpeg',
              4),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name,photo,difficulty));
  }

  static TaskInherited of(BuildContext context){
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType();
    assert(result != null, 'No Task found in context');
    return result!;
  }
  
  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }



}


