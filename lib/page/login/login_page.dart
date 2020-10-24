import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_mall_example/model/user_model.dart';
import 'package:flutter_mall_example/service/user_service.dart';
import 'package:flutter_mall_example/utils/navigation_util.dart';
import 'package:flutter_mall_example/utils/sharedpreferences_util.dart';
import 'package:flutter_mall_example/utils/toast_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginKey = GlobalKey<FormState>();
  final _accountController = TextEditingController();
  final _passwordController = TextEditingController();
  final _userService = UserService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(
          color: Colors.grey,
          onPressed: () => NavigationUtil.pop(context),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: Text(
              "账号登录",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Form(
            key: _loginKey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, top: 30, right: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "请输入手机号",
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.blue,
                        size: 25,
                      ),
                    ),
                    maxLines: 1,
                    keyboardType: TextInputType.phone,
                    controller: _accountController,
                    validator: _validateAccount,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20, right: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "请输入密码",
                        icon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        )),
                    maxLines: 1,
                    obscureText: true,
                    controller: _passwordController,
                    validator: _validatePassword,
                  ),
                ),
                Container(
                  width: 260,
                  height: 40,
                  margin: EdgeInsets.only(top: 50),
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    child: Text(
                      "登录",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    onPressed: _login,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(bottom: 15),
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                  child: Text(
                    "注 册",
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                  onPressed: () => ToastUtil.showToast("注册"),
                )),
          )
        ],
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  void _login() {
    if (_loginKey.currentState.validate()) {
      _loginKey.currentState.save();
      String account = _accountController.text;
      String password = _passwordController.text;
      EasyLoading.show();
      _userService.login(account, password, (UserModel userModel) {
        EasyLoading.dismiss();
        _saveUserInfo(userModel);
        ToastUtil.showToast("登录成功");
        NavigationUtil.pop(context);
      }, (String errorMsg) {
        EasyLoading.dismiss();
        ToastUtil.showToast(errorMsg);
      });
    } else {
      ToastUtil.showToast("验证失败");
      setState(() {});
    }
  }

  Future _saveUserInfo(UserModel userModel) async {
    TokenValue.saveToken(userModel.token);
  }

  String _validateAccount(String value) {
    if (value == null || value.length != 11) {
      return "账号必须为11位手机号";
    }
    return null;
  }

  String _validatePassword(String value) {
    if (value == null || value.length < 6) {
      return "密码必须大于6位数";
    }
    return null;
  }
}
