import 'package:flutter/material.dart';
import 'package:quiz_app/models/quistions_data.dart';
import 'package:quiz_app/widgets/quiz.dart';
import 'package:quiz_app/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionIndex = 0;
  int totalScore = 0;

  answerQuestion(int score) {
    setState(() {
      questionIndex += 1;
      totalScore += score;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  final QuestionsData questionsData = QuestionsData();

  late List<Map<String, Object>> questions = questionsData.getQuestions();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 39, 37, 37),
        title: const Text(
          'Quiz App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        color: Colors.grey,
        child: Column(
          children: [
            Text(
              "Question ${questionIndex + 1}/${questions.length} ",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'IslandMoments'),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 80),
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 80),
                child: questionIndex < questions.length
                    ? Quiz(questions, questionIndex, answerQuestion)
                    : Result(resetQuiz, totalScore),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
