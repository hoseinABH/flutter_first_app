import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback tryAgainHandler;
  final int totalScore;
  Result(this.tryAgainHandler, this.totalScore);

  String get resultPhrase {
    var resultText = 'you did it 💪';
    if (totalScore > 20) {
      return resultText;
    } else {
      return 'you fail';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 36),
      child: Column(
        children: [
          Text(resultPhrase),
          Text('total score is:$totalScore'),
          OutlineButton(
            child: Text('Try again'),
            onPressed: tryAgainHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
