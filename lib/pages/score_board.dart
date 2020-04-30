import 'package:flutter/material.dart';

class ScoreBoard extends StatefulWidget {
  ScoreBoard({Key key}) : super(key: key);

  @override
  _ScoreBoardState createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            FlatButton(
              color: Colors.orange,
              onPressed: () {},
              child: Text("1- Pizza ACF",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("2- Lokanta LCQ",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            FlatButton(
              color: Colors.green,
              onPressed: () {},
              child: Text("3- HG Otel",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.yellow,
              onPressed: () {},
              child: Text("4- TT Market",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.indigo,
              onPressed: () {},
              child: Text("5- Pizza Happy",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.purple,
              onPressed: () {},
              child: Text("6- Lokanta Vega",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.pink,
              onPressed: () {},
              child: Text("7- JJH Otel",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.brown,
              onPressed: () {},
              child: Text("8- PW Market",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {},
              child: Text("9- VG Market",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.lightGreen,
              onPressed: () {},
              child: Text("10- ED Market",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {},
              child: Text("10- EGE Market",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            FlatButton(
              color: Colors.lightGreen,
              onPressed: () {},
              child: Text("1- Pizza Ra",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
/**
 * Container(
        padding: EdgeInsets.only(left: 100, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("1- Pizza Ra",
                    style: TextStyle(
                        color: Colors.orange.shade900,
                        fontSize: 45,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("2- Lokanta Pera",
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("3- HG Otel",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("4- TT Market",
                    style: TextStyle(
                        color: Colors.red.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("5- Pizza Happy",
                    style: TextStyle(
                        color: Colors.orange.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("6- Lokanta Vega",
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("7- JJH Otel",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("8- PW Market",
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("9- VG Market",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
                Text("10- ED Market",
                    style: TextStyle(
                        color: Colors.orange.shade900,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800)),
              ],
            ),
          ],
        ),
      ),
 */
