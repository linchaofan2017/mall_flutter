import 'package:flutter_mall_example/utils/http_util.dart';

typedef OnSuccess<T>(T data);
typedef OnFail(String msg);

class UserService {
  Future login(String account, String password) async {
    String url = "http://120.25.226.11:8080/mall-app/wx/auth/login";
    Map<String, String> params = {"username": account, "password": password};
    var response = await HttpUtil.instance.postJson(url,parameters: params);
    print(response);
  }
}