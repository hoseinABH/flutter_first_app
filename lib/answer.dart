// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final int answerScore;
  Answer(this.selectHandler, this.answerText, this.answerScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8, left: 8),
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: () => selectHandler(answerScore),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
