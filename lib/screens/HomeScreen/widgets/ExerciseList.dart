import 'package:flutter/material.dart';
import 'package:hackuci_workshop/models/Exercise.dart';
import 'package:hackuci_workshop/screens/ExerciseDetailScreen/ExerciseDetail.dart';
import 'package:provider/provider.dart';

import 'package:hackuci_workshop/provider/ExerciseProvider.dart';

import 'ExerciseTile.dart';

class ExerciseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<ExcerciseProvider>();
    List<Excercise> tasks = taskProvider.filterExcercises();

    return ListView.builder(
      itemBuilder: (context, index) {
        Excercise e = tasks[index];
        return GestureDetector(
          onTap: () => Navigator.pushNamed(context, ExcerciseDetail.routeName,
              arguments: e),
          child: ExerciseTile(
            index: index,
            taskName: e.name,
            date: e.date,
          ),
        );
      },
      itemCount: tasks.length,
    );
  }
}
