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

    /// TODO: Implement the ExerciseTile
    /// that displays some exercise info
    /// in a ListTile widget
    return Container();
  }
}
