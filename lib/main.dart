import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_state_management/app_router.dart';
import 'package:to_do_state_management/screen/todo.dart';

import 'models/save_task.dart';

void main() {
  runApp(ChangeNotifierProvider(create:(BuildContext context) => SaveTask(),

  child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
        initialRoute: Todo.routeName,
      routes: AppRouter.routes,
    );
  }
}
