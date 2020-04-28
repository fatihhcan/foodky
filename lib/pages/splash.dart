import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';
import 'package:solution/auth/login.dart';
import 'package:solution/auth/register.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToLoginScreen();
      } else {
        _navigateToRegisterScreen();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }

  void _navigateToLoginScreen() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  }

  void _navigateToRegisterScreen() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Register()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Opacity(
                    opacity: 1,
                    child: Image.asset('assets/images/splash.gif'),
                  ),
                  /* Text("Foodky",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.orange.shade900,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Montserrat",
                      )),*/
                  //Image.asset('assets/images/dscmaku.png')
                ],
              ),
            ),
            /* Shimmer.fromColors(
              baseColor: Color(0xff000000),
              highlightColor: Color(0xffB71C1C),
              child: Container(
                child: Text("Surffiy",
                style:TextStyle(
                  fontSize: 100.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 18.0,
                      color: Colors.black87,
                      offset: Offset.fromDirection(120,12)
                    )
                  ]
                ), ),
              )
            )*/
          ],
        ),
      ),
    );
  }
}
