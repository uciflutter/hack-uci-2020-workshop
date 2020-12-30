import 'package:flutter/material.dart';
import 'package:hackuci_workshop/provider/ExerciseProvider.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<ExcerciseProvider>();

    return SafeArea(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: "Search for a task...",
        ),
        style: TextStyle(color: Colors.white),
        onChanged: (value) {
          taskProvider.onQueryChange(value);
          print(taskProvider.filterExcercises());
        },
      ),
    );
  }
}
