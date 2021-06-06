import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';
import './result.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQ;

  Quiz(
      {@required this.questions,
      @required this.answerQ,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(questions[_questionIndex]),
        // now that Question widget is created, replace Text with it
        Question(questions[questionIndex]['questionText']),

        // can insert Widgets via map function like javascript
        // dart cannot know what type the map values are, so gotta use "as"
        // as List<String> -> promising dart that I know for sure I have a list of strings under "answers" keyword

        // getting the <Iterable> class and not List, so map doesn't work ->  .toList()

        // other problem, Collumn takes a list of Widgets, but we're giving it a list -> nesting lists basically
        // that won't do so we use the spread operator, make a copy this list's values so we end up with individual items
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          // javascript trick, passing a ref to a function with args and not the actual function
          return Answer(() => answerQ(answer['score']), answer['text']);
        }).toList()
        // Answer(_answer),
        // Answer(_answer),
        // Answer(_answer),
      ],
    );
  }
}
