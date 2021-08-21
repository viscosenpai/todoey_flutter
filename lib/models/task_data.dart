import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'init task', isDone: false),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskName) {
    _tasks.add(Task(name: newTaskName, isDone: false));
    notifyListeners();
  }

  void updatedTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletedTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
