import 'package:flutter/material.dart';
import 'package:hackuci_workshop/models/Exercise.dart';

class TaskDetail extends StatelessWidget {
  static const routeName = "/taskDetail";

  @override
  Widget build(BuildContext context) {
    final Excercise args = ModalRoute.of(context).settings.arguments;
    final DateTime date = args.date;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
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
            Container(
              height: MediaQuery.of(context).size.width * 0.1,
              padding: EdgeInsets.all(10),
              child: Text(
                'Needs to be done by ${date.month}/${date.day}/${date.month} at ${date.hour}:${date.minute}',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
