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

    /// TODO: Implement the a listview.builder()
    /// widget that displays all the different
    /// exercises in the ExerciseTile Widget

    return Text('Exercise List', style: TextStyle(color: Colors.white));
  }
}
