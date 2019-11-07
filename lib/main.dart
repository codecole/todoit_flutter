import 'package:flutter/material.dart';
import 'package:todoit_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoit_flutter/module/task_data.dart';
void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}


