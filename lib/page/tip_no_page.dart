import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("找不到对应的页面"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/airplane.png",
              width: 70,
              height: 70,
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "页面找不到了...",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
