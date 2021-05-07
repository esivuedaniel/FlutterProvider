import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/model/TaskData.dart';
import 'package:provider_flutter/widgets/Task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          //instead of using Provider.of<TaskData>(context)..., we used "taskData" which is wrap inside a "CONSUMER<TaskData>" widget
          itemCount: taskData.taskCount,
          itemBuilder: (context, index)
          {return TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkCallBack: (checkBoxState){
              taskData.updateTask(taskData.tasks[index]);
            },
            onLongPressed:(){
              taskData.removeTask(index);
            },
          );
          },
        );
      });
  }
}

