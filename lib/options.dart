import 'package:flutter/material.dart';

class Option extends StatelessWidget{

  final String optionText;
  final Function func;
  Option({@required this.optionText,@required this.func});

  Widget build(BuildContext context){
    return RaisedButton(child: Text(optionText),onPressed: func
    );
  }

}