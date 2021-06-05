import 'package:flutter/material.dart';

// expecting a callback function to call onPress
// pointer to a function
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: selectHandler,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
        ));
  }
}

// final vs const
// runtime constant, compiled constant

// for the final keyword, we can be in the dark as to what the variable will have, but not for const

// variable cannot be changed
// const smth = ['Hello'];
// smth = []; --doesn't work
// current value of the variable cannot be changed, but the variable can be assigned to a different one
// var smth_2 = const ['Hello'];
// smth_2 = []; --doesn work
