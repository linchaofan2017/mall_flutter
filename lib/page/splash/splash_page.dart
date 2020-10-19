import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();

}

class _SplashState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/images/splash.png"),
    );
  }

}
