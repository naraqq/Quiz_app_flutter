import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(this.questions, this.questionAnswer, this.questionIndex,
      {Key? key})
      : super(key: key);
  final List<Map<String, Object>> questions;
  final Function questionAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["textQuestion"].toString()),
        ...(questions[questionIndex]["textAnswer"] as List<Map<String, Object>>)
            .map((answer) => Answer(() => questionAnswer(answer["score"]),
                answer["text"] as String))
            .toList(),
      ],
    );
  }
}
