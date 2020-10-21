import 'package:flutter/material.dart';
import 'package:flutter_mall_example/utils/constants.dart';
import 'package:flutter_mall_example/utils/navigation_util.dart';

class ShoppingCarPage extends StatefulWidget {
  @override
  _ShoppingCarState createState() => _ShoppingCarState();
}

class _ShoppingCarState extends State<ShoppingCarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstants.MAIN_HOME),
        centerTitle: true,
      ),
      body: Center(
        child: Text("购物车"),
      ),
    );
  }
}
