import 'package:flutter/foundation.dart';
import 'package:provider_flutter/model/Task.dart';

class TaskData extends ChangeNotifier {
  //This class contain the "data" we are going to listen to in the "provider".
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy bread"),
    Task(name: "Buy egg"),
  ];

  //Count the number of items in the list, using getter
  int get taskCount {
    return tasks.length;
  }

//addTaskCallback for provider
  void addTaskCallback(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  //remove task
void removeTask( int index){
    tasks.removeAt(index);
    notifyListeners();
}
}
