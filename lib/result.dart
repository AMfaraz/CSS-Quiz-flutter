import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int score;
  final Function func;

  Result({@required this.score,@required this.func});

  Widget build(BuildContext context){
    return Center(child: Column(children: [Text("Total question you asnwered correctly are ${score} ",
    style: TextStyle(fontSize: 20,color: Colors.deepPurpleAccent,fontWeight: FontWeight.w500),textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: func, child: Text("Reset",style: TextStyle(color: Colors.lightBlue,fontSize: 15),))
        ]
      )
    );
  }

}