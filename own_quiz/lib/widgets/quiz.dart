import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsIndex;
  Quiz({this.questions, this.questionsIndex});
  @override
  Widget build(BuildContext context) {
    return Text(
      questions[questionsIndex]['question'],
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
