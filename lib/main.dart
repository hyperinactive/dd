import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

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

  void _answer() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override // java decorator, good practice
  Widget build(BuildContext context) {
    var questions = [
      'Why did she leave me?',
      'How to fix a failing relationship?',
      'How to escape existantial dred?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This be a tittle'),
        ),
        // to put multiple widgets, need to use some layout widget first
        // Column expects an array of widgets (Java structure esq)
        // notation good practice <Widget>[]
        body: Column(
          children: [
            // Text(questions[_questionIndex]),
            // now that Question widget is created, replace Text with it
            Question(questions[_questionIndex]),

            Answer(_answer),
            Answer(_answer),
            Answer(_answer),
          ],
        ),
      ),
    );
  }
}
