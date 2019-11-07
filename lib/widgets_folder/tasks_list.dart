import 'package:flutter/material.dart';
import 'package:todoit_flutter/widgets_folder/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoit_flutter/module/task_data.dart';

class TaskList extends StatelessWidget {
//  final List<Task> tasks;
//
//  TaskList(this.tasks);

  @override
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
                longPressCallback:(){
                  taskData.deleteTask(task);
            },);
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
