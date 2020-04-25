import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function question_chosen;
  final List<Map<String,Object>>questions;

  Quiz({@required this.questionIndex,@required this.question_chosen,@required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['answer'] as List<String>).map((ans){
              return Answer(question_chosen,ans);
            }).toList()
          ],
        );
  }
}