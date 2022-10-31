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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Done!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          CustomText('Total Score = $resultScore', Colors.black),
          CustomText(resultPhrase, Colors.black),
          TextButton(
            onPressed: holder,
            child: CustomText('Restart The App', Colors.red),
          ),
        ],
      ),
    );
  }

  Text CustomText(String text, Color color) => Text(
        text,
        style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'IslandMoments'),
      );
}
