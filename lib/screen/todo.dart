import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_state_management/models/save_task.dart';

class Todo extends StatelessWidget {
  static const String routeName = "/todo-screen";
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Screen"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/add-todo-screen");
        },
        child: const Icon(Icons.add),
      ),

      body: Consumer<SaveTask>(builder: (context, task, child){
        return ListView.builder(itemCount: task.tasks.length, itemBuilder: (BuildContext context, index){
          return ListTile(
            title: Text(task.tasks[index].Title, style: TextStyle(
                decoration: task.tasks[index].isDone?
                TextDecoration.lineThrough:TextDecoration.none),),
            trailing: Wrap(
              children: [
                Checkbox(value: task.tasks[index].isDone, onChanged:
                    (_){context.read<SaveTask>().checkTassk(index);
                }),
                IconButton(onPressed: (){
                  context.read<SaveTask>().delete(task.tasks[index]);
                }, icon: Icon(Icons.delete))
              ],
            ),
          );
        });
      }),
    );


  }
}
