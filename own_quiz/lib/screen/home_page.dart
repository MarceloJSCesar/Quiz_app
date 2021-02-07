import 'package:flutter/material.dart';
import 'package:own_quiz/widgets/button.dart';
import 'package:own_quiz/widgets/footer.dart';
import 'package:own_quiz/widgets/quiz.dart';
import 'package:own_quiz/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _questionsIndex = 0;
  int _totalScore = 0;
  final questions = const [
    {
      'question': 'What\'s your programming language?',
      'answers': [
        {'text': 'Java', 'score': 9},
        {'text': 'Python', 'score': 9},
        {'text': 'JavaScript', 'score': 9},
        {'text': 'Dart', 'score': 8}
      ],
    },
    {
      'question': 'What\'s your country?',
      'answers': [
        {'text': 'Cape Verde', 'score': 4},
        {'text': 'United State', 'score': 10},
        {'text': 'Canada', 'score': 8},
        {'text': 'China', 'score': 6}
      ],
    },
    {
      'question': 'How many projects you\'ve been working on?',
      'answers': [
        {'text': '1', 'score': 2},
        {'text': '2', 'score': 3},
        {'text': '4', 'score': 5},
        {'text': '7', 'score': 6},
      ],
    }
  ];

  void nextQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionsIndex += 1;
    });
    print('Score : $_totalScore');
  }

  void returnQuestion() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
        _questionsIndex < questions.length
          ? Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Quiz(questions: questions, questionsIndex: _questionsIndex),
                  SizedBox(height: 10,),
                  ...(questions[_questionsIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answers) {
                    return ButtonNext(
                      nextQuestion: () => nextQuestion(answers['score']),
                      nextQuestionText: answers['text'],
                    );
                  }).toList(),
                ],
              ),
          )
          : Expanded(child: Result(_totalScore, returnQuestion)),
          Footer(),
          SizedBox(height: 8,)
        ]));
  }
}
