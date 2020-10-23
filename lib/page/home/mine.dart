import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_mall_example/utils/constants.dart';
import 'package:flutter_mall_example/utils/navigation_util.dart';
import 'package:flutter_mall_example/utils/toast_util.dart';
import 'package:flutter_mall_example/widgets/icon_text_arrow.dart';

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
      body: Column(
        children: <Widget>[
          IconTextArrow(
            Icons.reorder, "我的订单", Colors.deepPurpleAccent, 
            callback: () => NavigationUtil.gotoLoginPage(context),),
          Divider(height: 1, color: Colors.grey,),
          IconTextArrow(Icons.reorder, "我的", Colors.deepPurpleAccent),
        ],
      ),
    );
  }
}
