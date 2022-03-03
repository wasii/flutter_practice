import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String valueBtn;
  // final Color btnColor;

  Answer(this.handler, this.valueBtn);//,this.btnColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          valueBtn,
          style: const TextStyle(color: Colors.white),
        ),
        color: Colors.blue,
        onPressed: handler,
      ),
    );
  }
}
