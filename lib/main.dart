import './result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _counter = 0;
  var _totalScore = 0;

  void _incrementCounter(int score) {
    _totalScore += score;
    setState(() {
      _counter += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _counter = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final _questions = const [
      {
        'question': 'What\'s your favorite color?',
        'answer': [
          {'text': 'Black', 'scroe': 10},
          {'text': 'Red', 'scroe': 5},
          {'text': 'Green', 'scroe': 3},
          {'text': 'White', 'scroe': 1}
        ]
      },
      {
        'question': 'What\'s your favorite animal?',
        'answer': [
          {'text': 'Lion', 'scroe': 10},
          {'text': 'Elephant', 'scroe': 5},
          {'text': 'Cow', 'scroe': 3},
          {'text': 'Goat', 'scroe': 1}
        ]
      },
      {
        'question': 'What\'s your favorite programming language?',
        'answer': [
          {'text': 'Swift', 'scroe': 10},
          {'text': 'Kotlin', 'scroe': 5},
          {'text': 'Flutter', 'scroe': 3},
          {'text': 'C#', 'scroe': 1}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Application'),
        ),
        body: _counter < _questions.length
            ? Quiz(
                questions: _questions,
                incrementCounter: _incrementCounter,
                counter: _counter)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
