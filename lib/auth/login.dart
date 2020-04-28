import 'package:flutter/material.dart';
import 'package:solution/auth/auth.dart';
import 'package:solution/pages/home.dart';

import 'corporate_register.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Foodky",
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.orange.shade900,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Montserrat",
                  )),
              SizedBox(height: 30, width: 30),
              TextField(
                // cursorColor: Colors.amber,
                controller: _emailController,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orangeAccent, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orangeAccent, width: 2)),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 30, width: 30),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orangeAccent, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orangeAccent, width: 2)),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.vpn_key),
                ),
              ),
              Center(
                heightFactor: 2,
                widthFactor: 2,
                child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                    hoverColor: Colors.white,
                    color: Colors.orangeAccent,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }),
              ),
              /*async{
                   if(_emailController.text.isEmpty || _emailController.text.isEmpty ){
                     print("Emaild and password cannot be empty");
                     return;
                   }
                  bool res = await AuthProvider().signInWithEmail
                  (_emailController.text, _passwordController.text,);
                  if(!res){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    
                  }
                  } */
              SizedBox(height: 5, width: 5),
              Center(
                child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    hoverColor: Colors.white,
                    color: Colors.orangeAccent,
                    child: Text(
                      "Login with Google",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () async {
                      bool res = await AuthProvider().loginWithGoogle();
                      if (!res) print("error logging in with google");
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                    }),
              ),
              Center(
                child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    hoverColor: Colors.white,
                    color: Colors.orangeAccent,
                    child: Text(
                      "Corporate Application",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CorporateRegister()));
                    }),
              ),
              SizedBox(height: 35, width: 35),
              Image.asset('assets/images/dscmaku.png'),
            ],
          ),
        ),
      ),
    );
  }
}
