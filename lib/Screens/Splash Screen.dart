import 'dart:async';
import 'package:flutter/material.dart';

import '../HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Color(0xFFf1f1f1)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 150,
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/splash.PNG'), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 280,
          ),
          CircularProgressIndicator(
            backgroundColor: Color(0xFF3b3b6b),
            valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFFd24848)),
          ),
        ],
      ),
    ));
  }
}
