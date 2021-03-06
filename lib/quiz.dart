import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  
  final List<Map<String, Object>> questions;
  final Function incrementCounter;
  final int counter;

  Quiz({required this.questions, required  this.incrementCounter, required  this.counter});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[counter]['question'] as String),
      ...(questions[counter]['answer'] as List<Map<String,Object>>).map((answer) {
        return Answer(() => incrementCounter(answer['scroe'] as int), answer['text'] as String);
      }).toList(),
    ]);
  }
}
