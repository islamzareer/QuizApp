class QuestionsData {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is actually electricity',
      'answers': [
        {'text': 'A flow of water', 'score': 0},
        {'text': 'A flow of air', 'score': 0},
        {'text': 'A flow of electrons', 'score': 1},
        {'text': 'A flow of atoms', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which of the following is not an international organisation?',
      'answers': [
        {'text': 'FIFA', 'score': 0},
        {'text': 'NATO', 'score': 0},
        {'text': 'ASEAN', 'score': 0},
        {'text': 'FBI', 'score': 1},
      ]
    },
    {
      'questionText':
          'Which of the following disorders is the fear of being alone?',
      'answers': [
        {'text': 'Agoraphobia', 'score': 1},
        {'text': 'Aerophobia', 'score': 0},
        {'text': 'Acrophobia', 'score': 0},
        {'text': 'Arachnophobia', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the speed of sound?',
      'answers': [
        {'text': '120 km/h', 'score': 0},
        {'text': '1,200 km/h', 'score': 1},
        {'text': '400 km/h', 'score': 0},
        {'text': '700 km/h', 'score': 0},
      ]
    },
    {
      'questionText': 'Which is the easiest way to tell the age of many trees?',
      'answers': [
        {'text': 'To measure the width of the tree', 'score': 0},
        {'text': 'To count the rings on the trunk', 'score': 1},
        {'text': 'To count the number of leaves', 'score': 0},
        {'text': 'To measure the height of the tree', 'score': 0},
      ]
    },
    {
      'questionText': 'What do we call a newly hatched butterfly?',
      'answers': [
        {'text': 'A moth', 'score': 0},
        {'text': 'A butter', 'score': 0},
        {'text': 'A caterpillar', 'score': 1},
        {'text': 'A chrysalis', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the main component of the sun?',
      'answers': [
        {'text': 'Liquid lava', 'score': 0},
        {'text': 'Gas', 'score': 1},
        {'text': 'Molten iron', 'score': 0},
        {'text': 'Rock', 'score': 0},
      ]
    },
    {
      'questionText': 'Which of the following animals can run the fastest?',
      'answers': [
        {'text': 'Cheetah', 'score': 1},
        {'text': 'Leopard', 'score': 0},
        {'text': 'Tiger', 'score': 0},
        {'text': 'Lion', 'score': 0},
      ]
    },
    {
      'questionText': 'What does the term “SOS” commonly stand for?',
      'answers': [
        {'text': 'Save Our Sheep', 'score': 0},
        {'text': 'Save Our Ship', 'score': 0},
        {'text': 'Save Our Seal', 'score': 0},
        {'text': 'Save Our Souls', 'score': 1},
      ]
    },
    {
      'questionText':
          'Which company is known for publishing the Mario video game?',
      'answers': [
        {'text': 'Xbox', 'score': 0},
        {'text': 'Nintendo', 'score': 1},
        {'text': 'SEGA', 'score': 0},
        {'text': 'Electronic Arts', 'score': 0},
      ]
    },
  ];
  QuestionsData();
  List<Map<String, Object>> getQuestions() {
    return _questions;
  }
}
