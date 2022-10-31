class QuestionsData {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answers': [
        {'text': 'Hassan', 'score': 10},
        {'text': 'Hassan', 'score': 20},
        {'text': 'Hassan', 'score': 30},
        {'text': 'Hassan', 'score': 40},
      ]
    },
  ];
  QuestionsData(){}
  List<Map<String, Object>> getQuestions() {
    return _questions;
  }
}
