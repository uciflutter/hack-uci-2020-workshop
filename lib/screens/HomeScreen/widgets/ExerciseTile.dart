import 'package:flutter/material.dart';
import 'package:hackuci_workshop/provider/ExerciseProvider.dart';
import 'package:provider/provider.dart';

class ExerciseTile extends StatelessWidget {
  final int index;
  final String taskName;
  final DateTime date;

  ExerciseTile({this.index, this.taskName, this.date});

  @override
  Widget build(BuildContext context) {
    final exerciseProvider = context.watch<ExcerciseProvider>();

    return Container(
      decoration:
          BoxDecoration(border: Border(top: BorderSide(color: Colors.red))),
      child: ListTile(
        title: Text(taskName, style: TextStyle(color: Colors.white)),
        subtitle: Text(
            'Needs to be done by ${date.month}/${date.day}/${date.month} at ${date.hour}:${date.minute}',
            style: TextStyle(color: Colors.white)),
        trailing: GestureDetector(
          onTap: () {
            exerciseProvider.removeExercise(index);
          },
          child: Icon(
            Icons.check,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
