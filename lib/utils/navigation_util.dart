import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mall_example/config/application.dart';
import 'package:flutter_mall_example/config/routers.dart';

class NavigationUtil {
  static void pop(BuildContext context){
    Application.router.pop(context);
  }

  static gotoMainPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.home,
        replace: true, transition: TransitionType.inFromRight);
  }

  static gotoSearchPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.search,
        transition: TransitionType.inFromRight);
  }

  static gotoLoginPage(BuildContext context) {
    Application.router.navigateTo(
        context, Routers.login, transition: TransitionType.inFromRight);
  }

}
