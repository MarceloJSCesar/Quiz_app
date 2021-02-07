import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function returnQuestion;
  Result(this.totalScore, this.returnQuestion);
  String get resultText {
    int percent = 0;
    if (totalScore <= 15) {
      percent = 19;
      return 'you\'re under normal but keep it up, you got it $percent%';
    } else if (totalScore <= 18) {
      percent = 38;
      return 'you\'re going so well , be focused, you got it $percent%';
    } else if (totalScore <= 20 || totalScore > 20) {
      percent = 78;
      return 'man you\'re killing that shit, you got it $percent%';
    } else {
      percent = 8;
      return 'you\'re so bad , you need think more about what you want to be and trace a plan, you got it $percent%';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          resultText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        FlatButton(
          child: Text(
            'return',
            style: TextStyle(color: Colors.blue, fontSize: 18),
          ),
          onPressed: returnQuestion,
        ),
      ],
    );
  }
}
