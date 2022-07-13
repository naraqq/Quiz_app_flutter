import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(const InitialApp());
}

final questions = [
  {
    "textQuestion": "1. What is your favorite color ? ",
    "textAnswer": [
      {"text": "A. Red", "score": 10},
      {"text": "B. Green", "score": 5},
      {"text": "C. Black", "score": 2},
      {"text": "D. White", "score": 1},
    ]
  },
  {
    "textQuestion": "2. What is your favorite animal ? ",
    "textAnswer": [
      {"text": "A. Bunny", "score": 10},
      {"text": "B. Dog", "score": 5},
      {"text": "C. Cat", "score": 2},
    ]
  },
  {
    "textQuestion": "3. What is your favorite food ? ",
    "textAnswer": [
      {"text": "A. Ramen", "score": 10},
      {"text": "B. Buuz", "score": 5},
      {"text": "C. Tempura", "score": 2},
      {"text": "D. Udon", "score": 1},
      {"text": "E. Sushi", "score": 0},
    ]
  },
  {
    "textQuestion": "4. What is your favorite sport ? ",
    "textAnswer": [
      {"text": "A. Football", "score": 10},
      {"text": "B. E-sport", "score": 5},
      {"text": "C. Basketball", "score": 2},
      {"text": "D. Tennis", "score": 1},
    ]
  },
];

class InitialApp extends StatefulWidget {
  const InitialApp({Key? key}) : super(key: key);

  @override
  State<InitialApp> createState() => _InitialAppState();
}

class _InitialAppState extends State<InitialApp> {
  var questionIndex = 0;
  var totalScore = 0;
  questionAnswer(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
            ),
          ),
          brightness: Brightness.light,
          textTheme: const TextTheme(
            headline6: TextStyle(
              fontSize: 36.0,
            ),
          ),
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Quiz App"),
            ),
            body: questionIndex < questions.length
                ? Quiz(questions, questionAnswer, questionIndex)
                : Result(totalScore, resetQuiz)));
  }
}
