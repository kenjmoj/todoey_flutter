import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      onLongPress: longPressCallback,
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
//
//class TaskCheckBox extends StatelessWidget {
//  TaskCheckBox({this.checkBoxState, this.toggleCheckboxState});
//  final bool checkBoxState;
//  final Function toggleCheckboxState;
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      value: checkBoxState,
//      onChanged: toggleCheckboxState,
//    );
//  }
//}
