import 'package:flutter/material.dart';
import 'package:hackuci_workshop/models/Exercise.dart';
import 'package:hackuci_workshop/provider/ExerciseProvider.dart';
import 'package:provider/provider.dart';

class AddExerciseDialog extends StatefulWidget {
  @override
  _AddExerciseDialogState createState() => _AddExerciseDialogState();
}

class _AddExerciseDialogState extends State<AddExerciseDialog> {
  String exercise = "";
  int setNum = 0;
  int repNum = 0;
  DateTime date = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final exerciseProvider = context.watch<ExcerciseProvider>();

    return SingleChildScrollView(
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Add an Exercise'),
              RaisedButton(
                  child: Text('Pick Date'),
                  onPressed: () async {
                    final DateTime chosenDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2025));
                    this.setState(() {
                      date = chosenDate;
                    });
                    print(date);
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Exercise',
                    hintText: 'Enter an exercise',
                  ),
                  onChanged: (value) {
                    this.setState(() {
                      exercise = value;
                    });
                    print(exercise);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Sets',
                    hintText: 'Enter a set number',
                  ),
                  onChanged: (value) => this.setState(() {
                    setNum = int.parse(value);
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Reps',
                    hintText: 'Enter a rep number',
                  ),
                  onChanged: (value) => this.setState(() {
                    repNum = int.parse(value);
                  }),
                ),
              ),
              RaisedButton(
                child: Text('Add'),
                onPressed: () {
                  Excercise newExercise = Excercise(
                    name: exercise,
                    date: date,
                    sets: setNum,
                    reps: repNum,
                  );
                  exerciseProvider.addExcercise(newExercise);
                  //Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
