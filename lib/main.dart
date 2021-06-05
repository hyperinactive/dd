// built-in widgets, themes, material, base classes
import 'package:flutter/material.dart';

// to run our app we need a 'runApp() method' from the material dependency
void main() {
  // anonymous instance of our MyApp() class
  runApp(MyApp());
}

// javascript arrow function
// shorthand for funcitons with just one expression
// void main() => runApp(MyApp());

// StatelessWidget - base class - empty widget
// every widget must extend a Stateless or Stateful
class MyApp extends StatelessWidget {
  // necessary method for classes, reqires BuildContext
  // this method is of class Widget, since it returns, well.. a Widget
  // build is called every time flutter needs to render smth onto the screen
  // build is always responsible for widget rendering - every widget has its own build method
  @override // java decorator, good practice
  Widget build(BuildContext context) {
    // MaterialApp does the base setup and it combines widgets into an app that can be rendered
    // similar to python, we can use the position of args or just NAME them
    // named and positional args
    // home: <- core widget
    return MaterialApp(
      // scaffold is a util class with a basic color theme
      home: Scaffold(
        appBar: AppBar(
          // create a bar widget and place a title in it
          title: Text('This be a tittle'),
        ),
        body: Text('This be the body'),
      ),
    );
  }
}
