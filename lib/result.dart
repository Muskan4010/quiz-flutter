import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int yourScore;
  final Function restart;
  Result(this.yourScore, this.restart);
  String get calScore {
    var correctQues = yourScore ~/ 10;
    String printText;
    if (correctQues == 1) {
      printText =
          'Your score is $yourScore \n And \n You got only $correctQues \n Right Answer!!';
    } else {
      printText =
          'Your score is $yourScore \n And \n You got $correctQues \n Right Answers!!';
    }

    return printText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        calScore,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
        ),
      ),
      FlatButton(
          onPressed: restart,
          child: Text(
            'RESTART',
          ),
          textColor: Colors.blue)
    ]));
  }
}
