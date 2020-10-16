import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(this.answerQuestion, this.questionIndex, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(questions[questionIndex]['ques']),
        ...(questions[questionIndex]['ans'] as List<Map<String, Object>>).map((
          onButton,
        ) {
          return Expanded(
              flex: 1,
              child: Answer(
                  () => answerQuestion(onButton['score']), onButton['option']));
        }).toList()
      ],
    );
  }
}
