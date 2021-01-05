import 'package:flutter/material.dart';
import 'package:hackuci_workshop/models/Exercise.dart';

class ExcerciseDetail extends StatelessWidget {
  static const routeName = "/taskDetail";

  @override
  Widget build(BuildContext context) {
    final Excercise args = ModalRoute.of(context).settings.arguments;
    final DateTime date = args.date;

    /// TODO: Implements a more detailed version
    /// of the ExerciseTile in a new screen by using
    /// Stacked Widget as well

    return Scaffold(
      body: Container(),
    );
  }
}
