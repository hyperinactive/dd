import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result({this.resultScore});

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
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
