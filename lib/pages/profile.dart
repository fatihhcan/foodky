import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.orangeAccent, Colors.orangeAccent],
              ),
            ),
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profil1.jpeg'

                      ),
                      radius: 50.0
                    ),
                    SizedBox(
                      height: 10.0,

                    ),
                    Text("Fatih Can", style: TextStyle(
                      fontSize: 22.0, 
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 10.0),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      clipBehavior: Clip.antiAlias,
                      color: Colors.white,
                      elevation: 8.0,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text("Profile Edit",
                                 style: TextStyle(color: Colors.orangeAccent,
                                  fontSize:22.0,
                                  fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal:16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("About", 
                  style: TextStyle(color: Colors.orangeAccent,
                   fontStyle: FontStyle.normal, 
                   fontSize: 28.0), ),
                   SizedBox(height: 10.0),
                   Text("Ankara - Turkey ", style: TextStyle(
                     fontSize: 22.0, 
                     fontStyle: FontStyle.italic,
                     fontWeight: FontWeight.w300,
                     letterSpacing: 2,
                   ))
                ],
              ),
            ),
          ),
        ],
       ),
    );
  }
}