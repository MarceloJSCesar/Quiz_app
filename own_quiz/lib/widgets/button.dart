import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  final Function nextQuestion;
  final String nextQuestionText;
  ButtonNext({this.nextQuestion, this.nextQuestionText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(10,0,10,0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.blue,
        child: Text(nextQuestionText),
        onPressed: nextQuestion,
      ),
    );
  }
}
