import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);
  final VoidCallback selectHandler;
  final String finalAnswer;
  const Answer(this.selectHandler, this.finalAnswer, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(
          finalAnswer,
          style: const TextStyle(fontSize: 18),
        ),
        // style: ElevatedButton.styleFrom(minimumSize: const Size(200, 50)),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        ),
      ),
    );
  }
}
