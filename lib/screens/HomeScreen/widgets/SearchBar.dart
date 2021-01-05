import 'package:flutter/material.dart';
import 'package:hackuci_workshop/provider/ExerciseProvider.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<ExcerciseProvider>();

    /// TODO: Create a searchbar widget
    /// that implements a filtering function
    /// on the exercise list

    return SafeArea(
      child: Text(
        'Search Bar',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
