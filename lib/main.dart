import 'package:flutter/material.dart';
import './question.dart';
import './options.dart';
import './mcq.dart';
import './result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  var _questionIndex=0;
  final _mcqs =[
    MCQ(question: "Which is the world's largest continent?", options: ["Asia","Antartic","Africa","America"], ans: "Asia"),
    MCQ(question: "Largest country in the world by area is? ", options: ["China","Russia","USA","India"], ans: "Russia"),
    MCQ(question: "How many bones does a human body have?", options: ["230","206","150","199"], ans: "206"),
    MCQ(question: "Which bear lives in the artic? ", options: ["Sun bear","Polar Bear","Grizzly bear","NOT"], ans: "Polar Bear"),
    MCQ(question: "Which Mughal Emporer built Taj Mahal? ", options: ["Akbar","Jahangir","Shah Jahan","Humanyun"], ans: "Shah Jahan"),
  ];

  var _totalScore=0;

  void click(int score ){

    setState(()=>null);
    
    if(_questionIndex<_mcqs.length){
      _questionIndex++;
      _totalScore=_totalScore+score;
    }
    else{
      print("all question answered");
    }
  }

  void reset(){

    _questionIndex=0;
    _totalScore=0;

    setState(() {
     null; 
    });

  }

  Widget build(BuildContext context){
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("CSS Quiz"),
        ),

        body: _questionIndex<_mcqs.length? Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [Question(questionText: _mcqs[_questionIndex].question),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [..._mcqs[_questionIndex].options.map((e) {
              return Option(optionText: e, func: (){
                if(e==_mcqs[_questionIndex].ans){
                  click(1);
                }
                else{
                  click(0);
                }
              }
              );
            }
            ),
          ]
          ),
          ],
        ):Result(score: _totalScore,func: reset,),
      )
    );
  }
}