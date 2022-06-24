import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

// class student : public Person{}
// StatefulWidget vs StatelessWidget
class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: const Text('Hello!'),
      ),
    );
  }
}
