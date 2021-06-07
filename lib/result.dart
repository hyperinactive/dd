import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetFn;

  Result({this.resultScore, this.resetFn});

  // getter function
  String get resultPhrase {
    String resultText = 'Thanks for answering';

    if (resultScore < 5) {
      resultText += ', bruddah';
    } else {
      resultText += ', bruv';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // refectoring can wrap widgets, very useful
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28),
          ),
          TextButton(
            onPressed: resetFn,
            child: Text(
              'Restart!',
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.pink)),
          ),
        ],
      ),
    );
  }
}
