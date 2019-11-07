import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
 final bool isChecked;
  final   String taskTitle;
 final Function checkboxCallback;
 final Function longPressCallback;


 TaskTile ({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});

//  void checkboxCallback(bool checkboxState){
//
//        setState(() {
//          isChecked= checkboxState;
//        });
//  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle, style: TextStyle(decoration: isChecked ?TextDecoration.lineThrough: null),),
      trailing: Checkbox(
    activeColor: Colors.lightBlueAccent,
    value: isChecked,
    onChanged: checkboxCallback,
      ),
    );

  }
}


//class TaskCheckbox extends StatelessWidget {
//
//  final bool checkboxState;
//  final Function toggleCheckboxState;
//
//  TaskCheckbox(this.checkboxState, this.toggleCheckboxState);
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      value: checkboxState,
//      onChanged: toggleCheckboxState,
//    );
//  }
//
//}