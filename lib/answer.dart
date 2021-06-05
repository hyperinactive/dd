import 'package:flutter/material.dart';

// expecting a callback function to call onPress
// pointer to a function
class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text('Answer 1'),
          onPressed: selectHandler,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
        ));
  }
}
