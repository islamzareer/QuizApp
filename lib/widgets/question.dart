import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question(this.questionText, {Key? key}) : super(key: key);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
