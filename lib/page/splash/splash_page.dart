import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mall_example/utils/navigation_util.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3), () => NavigationUtil.gotoMainPage(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/splash.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
