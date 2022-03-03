import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Text(
        question,
        style: const TextStyle(fontSize: 21),
        textAlign: TextAlign.center,
      ),
    );
  }
}
