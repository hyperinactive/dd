import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// types of widgets:
// Output/Input
// Layout and Control
// Container

// doesn't expect to have a state of any kind, doesn't rerender based on internal state
// class MyApp extends StatelessWidget {

// Stateful widget consists of 2 classes
// createState implementation should return the linked state of the widget
// build and all of the state data stays in the state class
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // _ means private, as in, it can be "seen" within the file (kind of like protected)
    // public -> _private class
    // same goes for variables
    return _MyAppState();
  }
}

// secondary class of the stateful app which contains the internal state
// extends State
// State is a generic class and we need to point to our Stateful class to attach it
// <pointerToTheClass>
class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answer() {
    // the UI elements won't rerender unless we change the state
    // to change it, use the setState() method, react stuff
    // setState -> build (of the class that has it), rerenders stuff that only have to do with the state it changes
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override // java decorator, good practice
  Widget build(BuildContext context) {
    // default list
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
            // questions[0] or questions.elementAt(0)
            Text(questions[_questionIndex]),
            // RaisedButton in the prev version of flutter
            // onPressed callback function child: Widget to render
            // javascript stuff: passing a ref to the function, no the invocation
            // answer > answer()

            // again, anonymous vs named functions, shorthand and the long one
            ElevatedButton(onPressed: _answer, child: Text('Answer 1')),
            ElevatedButton(
                // onPressed: () => print('Answered the second question'),
                onPressed: _answer,
                child: Text('Answer 2')),
            ElevatedButton(
                // onPressed: () {
                //   print('Answered');
                //   print('Answered twice');
                // },
                onPressed: _answer,
                child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
