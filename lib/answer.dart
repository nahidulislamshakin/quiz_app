import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerList;
  final VoidCallback changeQuestion;
  Answer(this.answerList, this.changeQuestion);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: RaisedButton(
          color: Colors.black,
          child: Text(
            answerList,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: changeQuestion,
        ),
      ),
    );
  }
}
