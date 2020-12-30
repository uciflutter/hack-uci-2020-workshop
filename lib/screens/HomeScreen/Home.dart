import 'package:flutter/material.dart';
import 'package:hackuci_workshop/screens/HomeScreen/widgets/AddExerciseDialog.dart';
import 'package:hackuci_workshop/screens/HomeScreen/widgets/SearchBar.dart';
import 'package:hackuci_workshop/screens/HomeScreen/widgets/ExerciseList.dart';

class Home extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SearchBar(),
            Expanded(
              child: ExerciseList(),
            )
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () async {
              showDialog(
                barrierDismissible: true,
                context: context,
                builder: (context) {
                  return AddExerciseDialog();
                },
              );
            }),
      ),
    );
  }
}
