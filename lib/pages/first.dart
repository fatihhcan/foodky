import 'package:flutter/material.dart';

import 'home.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
       child: Scaffold(
         body: Container(
           padding: EdgeInsets.all(40),
           alignment: Alignment.center,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             //mainAxisSize: MainAxisSize.max,
          
             children: <Widget>[
               Text("Foodky ",style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w900, fontSize: 50, color: Colors.orange),),
               SizedBox(height: 50, width: 50),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
               RaisedButton.icon(
                 onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                 },  
                 icon: Icon(Icons.home), 
                 label: Text("Home", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.bold),),
                 elevation: 5,
                 highlightColor: Colors.indigo.shade500,
                 textColor: Colors.orange.shade900,
                 ),
               
               SizedBox(height: 20, width: 20),
               RaisedButton.icon(
                 onPressed: (){},  
                 icon: Icon(Icons.location_city), 
                 label: Text("Emporium", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.bold),),
                 elevation: 5,
                 highlightColor: Colors.indigo.shade500,
                 textColor: Colors.orange.shade900,
               
                 ),
                 ],
               ),
               SizedBox(height: 20, width: 20),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                RaisedButton.icon(
                 onPressed: (){},  
                 icon: Icon(Icons.add), 
                 label: Text("Add", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.bold),),
                 elevation: 5,
                 highlightColor: Colors.indigo.shade500,
                 textColor: Colors.orange.shade900,
                 ),
               SizedBox(height: 20, width: 20),
                RaisedButton.icon(
                 onPressed: (){},  
                 icon: Icon(Icons.domain), 
                 label: Text("Otel", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.bold),),
                 elevation: 5,
                 highlightColor: Colors.indigo.shade500,
                 textColor: Colors.orange.shade900,
                 ),
                 ],
               ),
               SizedBox(height: 20, width: 20),
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                RaisedButton.icon(
                 onPressed: (){},  
                 icon: Icon(Icons.score), 
                 label: Text("Scorboard", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.bold),),
                 elevation: 5,
                 highlightColor: Colors.indigo.shade500,
                 textColor: Colors.orange.shade900,
                 ),
               SizedBox(height: 20, width: 20),
                RaisedButton.icon(
                 onPressed: (){},  
                 icon: Icon(Icons.local_dining), 
                 label: Text("Restaurant", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.bold),),
                 elevation: 5,
                 highlightColor: Colors.indigo.shade500,
                 textColor: Colors.orange.shade900,
                 ),

               

                 ],
               ),
               SizedBox(height: 80, width: 80),

               //Text("designed by",style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w700, fontSize: 10, color: Colors.indigo),),
               //Text("Mehmet Akif Ersoy University Developer Student Clubs",style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w800, fontSize: 13, color: Colors.indigo),),
              Image.asset("assets/images/dscmaku.png"),
              

             ],
           ),
         ),

      ),
    );
  }
}