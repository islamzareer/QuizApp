import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.holder, this.resultScore);

  final Function() holder;
  final int resultScore;

  String get resultPhrase {
    String resultText = '';
    if (resultScore >= 8) {
      resultText = 'You are Awesome!';
    } else if (resultScore >= 6) {
      resultText = 'It\'s Good :)';
    } else if (resultScore >= 4) {
      resultText = 'It\'s a little bad :(';
    } else {
      resultText = 'You are so bad :(';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'Done!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Total Score = $resultScore',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: holder,
            child: const Text(
              'Restart The App',
              style: TextStyle(
                fontSize: 30,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
