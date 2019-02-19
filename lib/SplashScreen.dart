import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/NoteList');
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit:StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff0087BA),
              gradient: LinearGradient(
                colors: [new Color(0xff0087BA), new Color(0xff61C199)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )
            )
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text (
                'CRUD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 55.0,
                  letterSpacing: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.0),
              ),
              Text (
                'To Do List App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  // letterSpacing: 10.0
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}