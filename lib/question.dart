import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionList;
  Question(this.questionList);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        questionList,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
