import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetQuiz;
  const Result(this.finalScore, this.resetQuiz, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Thanks for taking the quiz !",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Text(
          "Your score is: $finalScore",
          style: const TextStyle(fontSize: 22, color: Colors.blue),
        ),
        // ElevatedButton(onPressed: resetQuiz, child: const Text("Restart Quiz"))
        TextButton(onPressed: resetQuiz, child: const Text("Restart Quiz"))
      ],
    ));
  }
}
