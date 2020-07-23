import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerButtonHandeler;
  final String answerText;
  Answer(this.answerText, this.answerButtonHandeler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: this.answerButtonHandeler,
        color: Colors.blue,
      ),
    );
  }
}
