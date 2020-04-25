import 'package:first_app/questions.dart';
import 'package:first_app/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';


// void main(){
//   runApp(MyApp());
// }

// put "_" in front of the var or functions to make them private

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {'questionText' : 'What\'s your Favourite Color ?',
      'answer': ['Black','Red','Green','White'],
    },
    {'questionText' : 'What\'s your Favourite Animal ?',
      'answer': ['Tiger','Giraff','Lion','Rabbit'],
    },
    {'questionText' : 'What\'s your Favourite Instructor ?',
      'answer': ['Keyur Suthar','Devarsh','Max','Meet bhavsar'],
    },
  ];
  var _questionIndex = 0;

  void _question_chosen() {
    //print("Answer chosen");
  if(_questionIndex < _questions.length){
    print("you have more questions to procedd");
  }else{
    print("No more questions");
  }


    setState(() {
      //calls build method
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(
           questionIndex:_questionIndex,
           question_chosen:_question_chosen,
           questions:_questions) :Result(),
      ),
    );
  }
}   
