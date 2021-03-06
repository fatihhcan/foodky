import 'package:flutter/material.dart';

import 'corporate_register.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

       body: Container(
         padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
         
         
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
             SizedBox(height: 40, width: 40),
             TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent,width: 1)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.orangeAccent,width: 2)),
                  labelText: "Name - Surname",
                  prefixIcon: Icon(Icons.account_circle),
                ),
              ),
              SizedBox(height: 40, width: 40),
               TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent,width: 1)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.orangeAccent,width: 2)),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 40, width: 40),
             /*  TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent,width: 1)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.orangeAccent,width: 2)),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.vpn_key),
                ),
              ),
              SizedBox(height: 40, width: 40),*/
              Center(

                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                  hoverColor: Colors.white,
                  color: Colors.orangeAccent,
                  child: Text("Register",
                  style: TextStyle(color: Colors.white,fontFamily:"Montserrat",fontWeight: FontWeight.bold),),
                  onPressed: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                  }),
                  
              ),
               Center(

                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                  hoverColor: Colors.white,
                  color: Colors.orangeAccent,
                  child: Text("Make an application",
                  style: TextStyle(color: Colors.white,fontFamily:"Montserrat",fontWeight: FontWeight.bold),),
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>CorporateRegister()));
                  }),
                  
              ),
             ],   
           
         
       ),
     )
      );

  }
}