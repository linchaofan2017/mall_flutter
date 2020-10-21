import 'package:flutter/material.dart';
import 'package:flutter_mall_example/utils/constants.dart';
import 'package:flutter_mall_example/utils/navigation_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstants.MAIN_HOME),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () => NavigationUtil.gotoSearchPage(context),
          ),
        ],
      ),
      body: Center(
        child: Text("首页"),
      ),
    );
  }
}
