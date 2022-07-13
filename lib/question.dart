import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        child: Text(
          questionText,
          style: const TextStyle(
            fontSize: 25,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(-3, 3),
                blurRadius: 2.0,
                color: Color.fromARGB(10, 10, 10, 2),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ));
  }
}
