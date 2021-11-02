import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function tryAgainHandler;
  Result(this.tryAgainHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 36),
      child: Column(
        children: [
          Text('you did it !'),
          RaisedButton(
            onPressed: () => tryAgainHandler(),
            child: Text('Try again'),
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
