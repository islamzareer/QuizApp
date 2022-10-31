import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.x, this.answerText, {Key? key}) : super(key: key);

  final String answerText;
  final Function() x;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ElevatedButton(
          onPressed: x,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.center,
              answerText,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
