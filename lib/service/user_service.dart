import 'package:flutter_mall_example/model/user_model.dart';
import 'package:flutter_mall_example/utils/http_util.dart';

typedef OnSuccess<T>(T data);
typedef OnFail(String msg);

class UserService {
  Future login(String account, String password, OnSuccess<UserModel> onSuccess,
      OnFail onFail) async {
    String url = "http://120.25.226.11:8080/mall-app/wx/auth/login";
    Map<String, String> params = {"username": account, "password": password};
    try {
      var response = await HttpUtil.instance.postJson(url, parameters: params);
      if (response['errno'] == 0) {
        UserModel userModel = UserModel.fromJson(response['data']);
        onSuccess(userModel);
      } else {
        onFail(response['errMsg']);
      }
    } catch (e) {
      print(e);
      onFail("网络异常");
    }
  }
}
