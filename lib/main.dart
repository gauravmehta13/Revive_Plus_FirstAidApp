import 'package:flutter/material.dart';
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
          brightness: Brightness.dark, //DARK THEME
          primarySwatch: Colors.yellow,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: Colors.yellow
        ),
        home: SplashScreen());
  }
}
