import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/componets/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required this.child,
  }) : super(child: child);

  @override
  final Widget child;
  final List<Task> taskList = [
    Task(
      'Aprender Flutter',
      "assets/images/dash.png",
      5,
    ),
    Task(
      'Andar de Bike',
      "assets/images/bike.webp",
      1,
    ),
    Task(
      'Ler um Livro',
      "assets/images/livro.jpg",
      2,
    ),
    Task(
      'Meditar',
      "assets/images/meditar.jpeg",
      3,
    ),
    Task(
      'Jogar',
      "assets/images/jogar.jpg",
      4,
    ),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
