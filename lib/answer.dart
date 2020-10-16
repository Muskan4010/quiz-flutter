import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQues2;
  final String buttonText;
  //final String buttonCol;
  Answer(this.answerQues2, this.buttonText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: answerQues2,
        textColor: Colors.blue[300],
        color: Colors.blue[100],
        child: Text(buttonText),
      ),
    );
  }
}
