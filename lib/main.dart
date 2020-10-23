import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_mall_example/config/application.dart';
import 'package:flutter_mall_example/config/routers.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MyApp() {
    final Router router = Router();
    Application.router = router;
    Routers.configRouter(router);
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..backgroundColor = Colors.black12
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..indicatorColor = Colors.white
      ..progressColor = Colors.white
      ..textColor = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: Application.router.generator,
      builder: (BuildContext context, Widget child) => FlutterEasyLoading(
        child: child,
      ),
    );
  }
}
