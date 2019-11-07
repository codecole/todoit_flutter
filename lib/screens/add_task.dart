import 'package:flutter/material.dart';
import 'package:todoit_flutter/module/task_data.dart';
import 'package:provider/provider.dart';
import 'package:todoit_flutter/module/task.dart';
class AddTaskScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;

              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              child: Text('Add', style: TextStyle(
                  color: Colors.white,
              fontSize: 20.0)),
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(10.0),
              onPressed: () {
                final task = Task(name: newTaskTitle);
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);


              },
            )
          ],
        ),
      ),
    );
  }
}
