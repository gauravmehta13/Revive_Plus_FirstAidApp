import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Screens/Splash Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Revive +',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //home: SplashScreen()
        initialRoute: "/",
        routes: {
          "/": (context) => SplashScreen(),
          "home": (context) => HomePage()
        });
  }
}
