import 'package:flutter/material.dart';
import 'package:flutter_mall_example/utils/navigation_util.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30, left: 0, bottom: 30),
            child: IconButton(
              alignment: Alignment.centerLeft,
              icon: Icon(
                Icons.close,
                size: 35,
                color: Colors.grey,
              ),
              onPressed: () => NavigationUtil.pop(context),
            ),
          ),
          Center(
            child: Text(
              "账号登录",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "请输入账号",
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.blue,
                      )),
                  maxLines: 1,

                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "请输入密码",
                      icon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      )),
                  maxLines: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
