import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  
  final String questionText;
  Question({@required this.questionText});

  Widget build(BuildContext context){
    return Container(child:Text(questionText,style: TextStyle(fontSize: 20,color: Colors.deepPurpleAccent,fontWeight: FontWeight.w500),
      ) ,
    );
  }

}