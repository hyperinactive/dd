import 'package:flutter/material.dart';
import 'package:sqa/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // _ means private, as in, it can be "seen" within the file (kind of like protected)
    // public -> _private class
    // same goes for variables
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  // var questions = [
  //   'Why did she leave me?',
  //   'How to fix a failing relationship?',
  //   'How to escape existantial dred?'
  // ];

  // using maps for demonstration purposes, doing it via class more traditional approach
  // managing key-values pairs instead of props
  // just a list of maps
  static const _questions = [
    {
      'questionText': 'Why did she leave me?',
      'answers': [
        {'text': 'No car', 'score': 1},
        {'text': 'No income', 'score': 1},
        {'text': 'Yes', 'score': 2}
      ]
    },
    {
      'questionText': 'How to fix a failing relationship?',
      'answers': [
        {'text': 'No shot', 'score': 1},
        {'text': 'LMAO', 'score': 2},
        {'text': 'No car', 'score': 0}
      ]
    },
    {
      'questionText': 'How to escape existantial dred?',
      'answers': [
        {'text': 'Nah', 'score': 1},
        {'text': 'No car', 'score': 0},
        {'text': 'No', 'score': 2}
      ]
    },
  ];

  void _answer(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  @override // java decorator, good practice
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This be a tittle'),
        ),
        // to put multiple widgets, need to use some layout widget first
        // Column expects an array of widgets (Java structure esq)
        // notation good practice <Widget>[]

        // can use ternary op to display widgets conditionally
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQ: _answer,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(
                resultScore: _totalScore,
              ),
      ),
    );
  }
}
