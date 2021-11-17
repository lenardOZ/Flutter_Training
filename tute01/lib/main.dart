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

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Yellow', 'Green', 'Blue', 'Gold']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Dog', 'Cat', 'Rabbit', 'Frog']
    },
    {
      'questionText': 'Who\'s your favourite singer?',
      'answers': ['Elvis', 'Prince', 'Pavarotti', 'Beyonce']
    }
  ];

  void _answerQuestion() {
    //if (_questionIndex < questions.length - 1) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //}
    print(_questionIndex);
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
            : const Result(),
      ),
    );
  }
}
