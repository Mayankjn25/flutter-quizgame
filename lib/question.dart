import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
      height: 150.0,
      child: Card(
        elevation: 10.0,
        color: Colors.blue[50],
        child: Text(
          questionText,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
