// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:first_app/answer.dart';
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
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion(int id) {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'hello flutter',
              ),
            ),
            body: _questionIndex < 3
                ? Column(
                    children: <Widget>[
                      Question(
                          questions[_questionIndex]['questionText'] as String),
                      ...(questions[_questionIndex]['answers'] as List<String>)
                          .map((answer) {
                        return Answer(_answerQuestion, answer);
                      }).toList(),
                    ],
                  )
                : Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 36),
                    child: Column(
                      children: [
                        Text('you did it'),
                        RaisedButton(
                          onPressed: () => setState(() {
                            _questionIndex = 0;
                          }),
                          child: Text('Try again'),
                          color: Colors.blue,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  )));
  }
}
