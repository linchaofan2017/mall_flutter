import 'package:flutter/material.dart';
import 'package:flutter_mall_example/utils/constants.dart';
import 'package:flutter_mall_example/utils/navigation_util.dart';

class MinePage extends StatefulWidget {
  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstants.MAIN_HOME),
        centerTitle: true,
      ),
      body: Center(
        child: Text("我的"),
      ),
    );
  }
}
