import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(const QuizApp());

// class student : public Person{}
// StatefulWidget vs StatelessWidget
class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _tracker = 0;
  List<String> questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'What\'s your favorite subject?'
  ];

  void _answerChosen() {
    setState(() {
      if (_tracker < questions.length - 1) {
        _tracker++;
      } else {
        _tracker = 0;
      }
    });
    print(_tracker);
  }

  //QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_tracker]),
            ElevatedButton(
              onPressed: _answerChosen,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answerChosen,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerChosen,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
