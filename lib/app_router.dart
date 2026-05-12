

import 'package:flutter/cupertino.dart';
import 'package:to_do_state_management/screen/add_todo.dart';
import 'package:to_do_state_management/screen/todo.dart';

class AppRouter {
  static Map<String,WidgetBuilder > get routes => {
    Todo.routeName: (_) => const Todo(),
    AddTodo.name: (_) => const AddTodo()
  };
}