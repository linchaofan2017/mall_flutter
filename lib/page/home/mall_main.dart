import 'package:flutter/material.dart';
import 'package:flutter_mall_example/page/home/category.dart';
import 'package:flutter_mall_example/page/home/home.dart';
import 'package:flutter_mall_example/page/home/mine.dart';
import 'package:flutter_mall_example/page/home/shopping_car.dart';
import 'package:flutter_mall_example/utils/constants.dart';

class MallMainPage extends StatefulWidget {
  @override
  _MallMainState createState() => _MallMainState();
}

class _MallMainState extends State<MallMainPage> {
  final _list = List<Widget>();
  int _selectIndex = 0;

  @override
  void initState() {
    super.initState();
    _list
      ..add(HomePage())
      ..add(CategoryPage())
      ..add(ShoppingCarPage())
      ..add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: _list,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text(StringConstants.MAIN_HOME)),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text(StringConstants.MAIN_CATEGORY)),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(StringConstants.MAIN_CAR)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text(StringConstants.MAIN_MINE)),
        ],
        onTap: _setSelectPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectIndex,
      ),
    );
  }

  void _setSelectPage(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}
