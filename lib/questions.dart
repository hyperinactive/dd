import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // because the propery of this stateless widget CAN be changed
  // need the keyword "final", simialr to const in C++
  // promising not to change props

  // not to be confused with input data, as a fresh instance is created; prop assigned and doesn't change from then on
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    // styling is done via Style classes
    // container = div
    return Container(
      width: double
          .infinity, // 100% width; need it to center text; by default text only takes as much text as it needs
      // top, bot, right, combined etc... werid naming though
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        // text is aligned via TextAlign (.center is predefined position prop gotten from it, enum)
        textAlign: TextAlign.center,
      ),
    );
  }
}

// unrelated to the code itself, a dart feature
// allows use of multiple constructors, can be handy when instantiating an object with some predefined properties

// class Person {
//   String name;
//   int age;
//   Person({this.name, this.age});
//   Person.boomer(this.name) {
//     age = 30;
//   }
// }

// Person p0 = Person(name: 'Zoomer', age: 15);
// Person p1 = Person.boomer('BBoomer');
