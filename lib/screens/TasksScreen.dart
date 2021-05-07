
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/model/TaskData.dart';
import 'package:provider_flutter/screens/Add_task_screen.dart';
import 'package:provider_flutter/widgets/Task_List.dart';

class TasksScreen extends StatelessWidget {

  Widget buildButtomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            //modal button
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(
                //         (newTaskTitle) {
                //          // setState(() {
                //          //     tasks.add(Task(name:newTaskTitle ));
                //          // });
                //          Navigator.pop(context);
                // }
                )
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 30,right: 30,bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                      child: Icon(Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,)
                  ),
                  SizedBox(height: 10,),
                  Text('Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700
                  ),),
                  Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),),

                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 60, left: 20,right: 20,bottom: 30),

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                    )
                ),
                child: TasksList(),
              ),
            )
          ],
        )
    );
  }
}



