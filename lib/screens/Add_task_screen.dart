
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/model/TaskData.dart';

class AddTaskScreen extends StatefulWidget {

 // final Function addTaskCallback;
//  AddTaskScreen(this.addTaskCallback);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String _newTaskTitle;

  @override
  Widget build(BuildContext context) {

   // String newTaskTitile;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),
          topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                _newTaskTitle=newText;
              }
            ),

            SizedBox(height: 10,),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: (){
               // widget.addTaskCallback(_newTaskTitle);
                Provider.of<TaskData>(context, listen: false).addTaskCallback(_newTaskTitle);
                Navigator.pop(context);
              },
              child: Text('Add',
              style: TextStyle(
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
