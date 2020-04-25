import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function SelectHandler;
  final String ans;

  Answer(this.SelectHandler,this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
      child: Text(ans), 
      onPressed:SelectHandler , 
    ),
    );
  }
}
 