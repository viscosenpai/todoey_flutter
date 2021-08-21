import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?)? checkboxCallback;
  final void Function()? titleLongtapCallbask;

  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.titleLongtapCallbask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      onLongPress: titleLongtapCallbask,
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
