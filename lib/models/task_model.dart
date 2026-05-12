class TaskModel {
  final String Title;
  bool isDone;

  TaskModel({
    required this.Title,
    required this.isDone,
  });
void isComplete(){
  isDone = !isDone;
}

}