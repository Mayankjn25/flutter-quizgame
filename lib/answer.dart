import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
          color: Colors.blue,
          child: Text(answerText,
              style: TextStyle(
                color: Colors.blue[50],
                fontSize: 20.0,
              )),
          onPressed: selectHandler),
    );
  }
}
