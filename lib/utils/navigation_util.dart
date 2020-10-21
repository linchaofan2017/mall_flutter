import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mall_example/config/application.dart';
import 'package:flutter_mall_example/config/routers.dart';

class NavigationUtil {
  static gotoMainPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.home,
        replace: true, transition: TransitionType.inFromRight);
  }

  static gotoSearchPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.search,
        transition: TransitionType.inFromRight);
  }
}
