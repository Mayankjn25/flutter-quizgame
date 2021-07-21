import 'package:flutter/material.dart';
import 'quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': ' What is the hottest continent on Earth?',
        'answers': [
          {'text': 'Asia', 'score': 0},
          {'text': 'Europe', 'score': 0},
          {'text': 'Africa', 'score': 1},
          {'text': 'South Ameria', 'score': 0}
        ]
      },
      {
        'questionText':
            'The ratio of width of our National flag to its length is',
        'answers': [
          {'text': '3:5', 'score': 0},
          {'text': '2:3', 'score': 1},
          {'text': '2:4', 'score': 0},
          {'text': '3:4', 'score': 0},
        ]
      },
      {
        'questionText': 'What is the middle name of Rahul Dravid',
        'answers': [
          {'text': 'Naren', 'score': 0},
          {'text': 'Sharad', 'score': 1},
          {'text': 'Srivatsav', 'score': 0},
          {'text': 'Shyam', 'score': 0}
        ]
      },
      {
        'questionText': 'Light year is a unit of',
        'answers': [
          {'text': 'time', 'score': 0},
          {'text': 'light', 'score': 0},
          {'text': 'distance', 'score': 1},
          {'text': 'intensity of light', 'score': 0}
        ]
      },
      {
        'questionText':
            'The first death anniversary day of Sri Rajiv Gandhi was observed as the',
        'answers': [
          {'text': 'National Integration Day', 'score': 0},
          {'text': 'Peace and Love Day', 'score': 0},
          {'text': 'Secularism Day', 'score': 0},
          {'text': 'Anti-Terrorism Day', 'score': 1}
        ]
      },
      {
        'questionText': 'The purpose of choke in tube light is',
        'answers': [
          {'text': 'To decrease the current', 'score': 0},
          {'text': 'To increase the current', 'score': 0},
          {'text': 'To decrease the voltage momentarily', 'score': 0},
          {'text': 'To increase the voltage momentarily', 'score': 1}
        ]
      },
      {
        'questionText': 'Who developed Yahoo',
        'answers': [
          {'text': 'Dennis Ritchie & Ken Thompson', 'score': 0},
          {'text': 'David Filo & Jerry Yang', 'score': 1},
          {'text': 'Vint Cerf & Robert Kahn', 'score': 0},
          {'text': 'Steve Case & Jeff Bezos', 'score': 0},
        ]
      },
      {
        'questionText':
            'Ordinary table salt is sodium chloride. What is baking soda',
        'answers': [
          {'text': 'Potassium chloride', 'score': 0},
          {'text': 'Potassium carbonate', 'score': 0},
          {'text': 'Potassium hydroxide', 'score': 0},
          {'text': 'Sodium bicarbonate', 'score': 1}
        ]
      },
      {
        'questionText': 'India won its first Olympic hockey gold in',
        'answers': [
          {'text': '1928', 'score': 1},
          {'text': '1932', 'score': 0},
          {'text': '1936', 'score': 0},
          {'text': '1948', 'score': 0}
        ]
      },
      {
        'questionText': 'Metals are good conductors of electricity because',
        'answers': [
          {'text': 'they contain free electrons', 'score': 1},
          {'text': 'the atoms are lightly packed', 'score': 0},
          {'text': 'they have high melting point', 'score': 0},
          {'text': 'All of the above', 'score': 0}
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 65.0,
          titleSpacing: 2.0,
          title: Text(
            'Quiz Game',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
