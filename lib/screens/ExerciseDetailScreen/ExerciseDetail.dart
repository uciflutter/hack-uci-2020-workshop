import 'package:flutter/material.dart';
import 'package:hackuci_workshop/models/Exercise.dart';

class ExcerciseDetail extends StatelessWidget {
  static const routeName = "/taskDetail";

  @override
  Widget build(BuildContext context) {
    final Excercise args = ModalRoute.of(context).settings.arguments;
    final DateTime date = args.date;

    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  args.name,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Needs to be done by ${date.month}/${date.day}/${date.month}',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  Text(
                    'Sets: ${args.sets}',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  Text(
                    'Reps: ${args.reps}',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
