import 'package:flutter/cupertino.dart';
import 'package:to_do_state_management/models/task_model.dart';

class SaveTask extends ChangeNotifier{
  final List<TaskModel> _tasks = [
    TaskModel(Title: "Drink Water", isDone: false),
  ];

  List<TaskModel> get tasks => _tasks;
  void addTask(TaskModel task){
    tasks.add(task);
    notifyListeners();
  }

  void delete(TaskModel task){
    tasks.remove(task);
    notifyListeners();

  }


  void checkTassk(int index){
    tasks[index].isComplete();
    notifyListeners();
  }
}