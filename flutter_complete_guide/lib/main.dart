import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 2},
        {'text': 'Pink', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 2},
        {'text': 'Cat', 'score': 2},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Dog', 'score': 4},
      ],
    },
    {
      'questionText': 'Who\'s your best friend?',
      'answers': [
        {'text': 'Darshan', 'score': 2},
        {'text': 'Definetly Darshan', 'score': 4},
        {'text': 'Surely Darshan', 'score': 4},
        {'text': 'You', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answered');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
