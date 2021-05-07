import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/model/TaskData.dart';
import 'package:provider_flutter/screens/TasksScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (_) =>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}

