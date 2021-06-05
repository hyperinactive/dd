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
  // var questions = [
  //   'Why did she leave me?',
  //   'How to fix a failing relationship?',
  //   'How to escape existantial dred?'
  // ];

  // using maps for demonstration purposes, doing it via class more traditional approach
  // managing key-values pairs instead of props
  // just a list of maps
  static const questions = [
    {
      'questionText': 'Why did she leave me?',
      'answers': ['No car', 'No income', 'Yes']
    },
    {
      'questionText': 'How to fix a failing relationship?',
      'answers': ['No shot', 'LMAO', 'Bandaid']
    },
    {
      'questionText': 'How to escape existantial dred?',
      'answers': ['Nah', 'Nope', 'No']
    },
  ];

  void _answer() {
    setState(() {
      _questionIndex++;
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  // Text(questions[_questionIndex]),
                  // now that Question widget is created, replace Text with it
                  Question(questions[_questionIndex]['questionText']),

                  // can insert Widgets via map function like javascript
                  // dart cannot know what type the map values are, so gotta use "as"
                  // as List<String> -> promising dart that I know for sure I have a list of strings under "answers" keyword

                  // getting the <Iterable> class and not List, so map doesn't work ->  .toList()

                  // other problem, Collumn takes a list of Widgets, but we're giving it a list -> nesting lists basically
                  // that won't do so we use the spread operator, make a copy this list's values so we end up with individual items
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answer, answer);
                  }).toList()
                  // Answer(_answer),
                  // Answer(_answer),
                  // Answer(_answer),
                ],
              )
            : Center(
                child: Text(
                  'Thanks for answering!',
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
    );
  }
}
