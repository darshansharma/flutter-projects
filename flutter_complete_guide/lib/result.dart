import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int finalScore;
  final Function resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'You did it :)';
    if (finalScore >= 6) {
      resultText = 'You are awesome fella :)';
    } else if (finalScore >= 4) {
      resultText = 'You are pretty likeable :)';
    } else if (finalScore >= 1) {
      resultText = 'Hmm... You are strange!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz!!'))
        ],
      ),
    );
  }
}
