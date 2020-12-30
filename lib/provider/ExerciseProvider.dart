import 'package:flutter/foundation.dart';
import 'package:hackuci_workshop/models/Exercise.dart';

class ExcerciseProvider extends ChangeNotifier {
  String _query = "";

  /// The current query from the searchbar
  String get query => _query;

  /// Changes _query to newQuery
  void onQueryChange(String newQuery) {
    _query = newQuery;
    notifyListeners();
  }

  /// List of exercises to be displayed
  List<Excercise> _Excercises = [
    Excercise(
      name: "Pushups",
      date: DateTime.now(),
      sets: 5,
      reps: 10,
    ),
    Excercise(
      name: "Dips",
      date: DateTime.now(),
      sets: 3,
      reps: 8,
    ),
    Excercise(
      name: "Chinups",
      date: DateTime.now(),
      sets: 4,
      reps: 5,
    ),
    Excercise(
      name: "Pullups",
      date: DateTime.now(),
      sets: 5,
      reps: 10,
    ),
    Excercise(
      name: "Bench Press",
      date: DateTime.now(),
      sets: 4,
      reps: 10,
    ),
    Excercise(
      name: "Bicep Curl",
      date: DateTime.now(),
      sets: 6,
      reps: 4,
    ),
    Excercise(
      name: "Diamond Pushup",
      date: DateTime.now(),
      sets: 3,
      reps: 10,
    ),
    Excercise(
      name: "Military Pushup",
      date: DateTime.now(),
      sets: 6,
      reps: 10,
    ),
  ];

  /// Return all exercises
  List<Excercise> get exercises => _Excercises;

  /// Add new exercise to _Exercises
  void addExcercise(Excercise exercise) {
    _Excercises.insert(0, exercise);
    notifyListeners();
  }

  /// Remove an exercise at a given index
  void removeExercise(int index) {
    _Excercises.removeAt(index);
    notifyListeners();
  }

  /// Return exercises filtered by the query
  List<Excercise> filterExcercises() {
    return _Excercises.where((e) {
      return e.name.toLowerCase().indexOf(_query.toLowerCase()) != -1;
    }).toList();
  }
}
