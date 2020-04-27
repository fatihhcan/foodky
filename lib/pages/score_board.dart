import 'package:flutter/material.dart';

class ScoreBoard extends StatefulWidget {
  ScoreBoard({Key key}) : super(key: key);

  @override
  _ScoreBoardState createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         child: Expanded(
           child: ListView(
             scrollDirection: Axis.vertical,
             children: <Widget>[
               Text("1- Pizza Ra"),
               Text("2- Otel HG"),
               Text("3- Lokanta Pera"),
               Text("4- TT Market"),
               Text("5- WE Market"),


             ],
           )
         ),
       ),
    );
  }
}