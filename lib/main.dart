// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(int id) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'hello flutter',
        ),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: () => _answerQuestion(1),
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => _answerQuestion(2),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => _answerQuestion(3),
          ),
          RaisedButton(
            child: Text('Answer 4'),
            onPressed: () => _answerQuestion(4),
          ),
        ],
      ),
    ));
  }
}
