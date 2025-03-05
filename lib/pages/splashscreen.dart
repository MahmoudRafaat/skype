import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:untitled3/pages/login.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 4),
          () {
        Navigator.of(context).push(MaterialPageRoute(builder: (c){
          return LoginPage();
        })
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0078D7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("lib/assets/images/skype-icon-512x512-jyy9cogq.png"),
        LoadingAnimationWidget.twistingDots(
          leftDotColor: const Color(0xFF1A1A3F),
          rightDotColor: const Color(0xFFEA3799),
          size: 50,
        ),
          ],
        ),
      ),
    );
  }
}



