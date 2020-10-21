import 'package:fluro/fluro.dart';
import 'package:flutter_mall_example/page/home/mall_main.dart';
import 'package:flutter_mall_example/page/splash/splash_page.dart';
import 'package:flutter_mall_example/page/tip_no_page.dart';

final notFoundHandler =
    Handler(handlerFunc: (context, parameters) => NotFoundPage());

final splashHandler =
    Handler(handlerFunc: (context, parameters) => SplashPage());

final homeHandler = Handler(handlerFunc: (context, parameters) => MallMainPage());
