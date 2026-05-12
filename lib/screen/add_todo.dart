


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_state_management/models/save_task.dart';
import 'package:to_do_state_management/models/task_model.dart';

class AddTodo extends StatelessWidget {
  static const  name = "/add-todo-screen";
  const AddTodo({super.key});


  @override
  Widget build(BuildContext context) {
    final todoTEController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: todoTEController,
              autofocus: true,
              decoration: InputDecoration(
                hintText: "Enter your todo",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  context.read<SaveTask>().addTask(TaskModel(Title: todoTEController.text, isDone: false));
                  todoTEController.clear();
                  Navigator.of(context).pop();
                },
                child: const Text("Add Todo"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
