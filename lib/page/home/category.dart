import 'package:flutter/material.dart';
import 'package:flutter_mall_example/utils/constants.dart';
import 'package:flutter_mall_example/utils/navigation_util.dart';
import 'package:flutter_mall_example/utils/toast_util.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryPage> {
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
        child: Text("分类"),
      ),
    );
  }
}
