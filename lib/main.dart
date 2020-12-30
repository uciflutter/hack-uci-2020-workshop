import 'package:flutter/material.dart';
import 'package:hackuci_workshop/provider/ExerciseProvider.dart';
import 'package:hackuci_workshop/screens/ExerciseDetailScreen/ExerciseDetail.dart';
import 'package:hackuci_workshop/screens/HomeScreen/Home.dart';
import 'package:provider/provider.dart';

void main() {
  /// Main function
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// ChangeNotifierProvider:
    ///
    /// Provides access to ExerciseProvider()
    /// for all leaves under this widget
    return ChangeNotifierProvider(
      create: (context) => ExcerciseProvider(),
      builder: (context, child) => MaterialApp(
        title: 'Hack UCI Workshop App',
        routes: {
          /// Predefined "Named Routes"
          ///
          /// Tells Navigator to navigate to
          /// specific screen depending on
          /// given named route
          Home.routeName: (context) => Home(),
          ExcerciseDetail.routeName: (context) => ExcerciseDetail(),
        },
        initialRoute: Home.routeName,
      ),
    );
  }
}
