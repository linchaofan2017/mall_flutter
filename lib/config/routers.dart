import 'package:fluro/fluro.dart';
import 'package:flutter_mall_example/config/router_handlers.dart';

class Routers {
  static const root = "/";
  static const home = "/home";
  static const login = "/login";
  static const register = "/register";
  static const search = "/search";

  static void configRouter(Router router) {
    router.notFoundHandler = notFoundHandler;
    router.define(root, handler: splashHandler);
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
  }
}
