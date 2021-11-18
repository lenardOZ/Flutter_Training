import 'package:flutter/material.dart';
import 'package:tute01/quiz.dart';
import 'package:tute01/result.dart';

//import './question.dart';
//import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Yellow', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 2},
        {'text': 'Gold', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Frog', 'score': 1},
      ]
    },
    {
      'questionText': 'Who\'s your favourite singer?',
      'answers': [
        {'text': 'Beyonce', 'score': 10},
        {'text': 'Pavarotti', 'score': 5},
        {'text': 'Elvis', 'score': 2},
        {'text': 'prince', 'score': 1},
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    //if (_questionIndex < questions.length - 1) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //}
    print(_questionIndex);
  }

  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restQuiz),
      ),
    );
  }
}
