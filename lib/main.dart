import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:solution/pages/home.dart';
import 'package:solution/pages/hotels.dart';
import 'package:solution/pages/profile.dart';
import 'package:solution/pages/score_board.dart';
import 'package:solution/pages/splash.dart';
import 'package:solution/ui/landing.dart';
import 'package:solution/ui/tabbar.dart';

import 'auth/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}
