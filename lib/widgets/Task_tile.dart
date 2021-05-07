
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  bool isChecked;
  String taskTitle;
  Function checkCallBack;
  Function onLongPressed;

  TaskTile({this.isChecked,
      this.taskTitle, this.checkCallBack, this.onLongPressed}); // TaskTile({ this.isChecked, this.taskTitle});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:onLongPressed,
      title: Text(taskTitle,style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:checkCallBack,
      ),
    );
  }
}



