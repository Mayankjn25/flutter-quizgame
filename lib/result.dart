import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(
    this.resultScore,
    this.resetHandler,
  );

  String get resultPhase {
    String resultText;
    if (resultScore <= 5) {
      resultText = 'Poor';
    } else if (resultScore <= 8) {
      resultText = 'Good';
    } else {
      resultText = 'Excellent';
    }
    print(resultScore);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height:20.0),
          Text(
            'Score  $resultScore',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          SizedBox(
             height: 200.0
          ),
          RaisedButton(
            color: Colors.white,
            onPressed: resetHandler,
            child: Text(
              'Reset Quiz',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
