import 'dart:async';
import 'dart:ui';

import 'package:ewarn_app/index.dart';
import 'package:ewarn_app/longsor/sop_view.dart';
import 'package:flutter/material.dart';
import 'package:ewarn_app/longsor/home_view.dart';
import 'package:ewarn_app/longsor/sop_view.dart';

class SplashScreenPage extends StatefulWidget{
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState(){
    super.initState();
    startSpashScreen();
  }
  startSpashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return IndexPage();
        })
      );
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xffeaB543),
      body: Center(
        child:
          Padding(
            padding: const EdgeInsets.only(left: 30, right:30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                        Text('Ewarn Bojonegoro',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white, fontFamily: 'Open Sans')),
                        Image.asset(
                          "images/logo.png",
                          width: 200.0,
                          height: 200.0,
                        ),
                        Text('Hydrometeorological disaster early warning information system in Bojonegoro',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, fontFamily: 'Open Sans'))
                  ],
            ),
          )
      )
    );
  }
}