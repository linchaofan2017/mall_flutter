import 'package:dio/dio.dart';
import 'package:flutter_mall_example/utils/sharedpreferences_util.dart';

class HttpUtil {
  static HttpUtil get instance => _getHttpUtilInstance();

  static HttpUtil _httpUtil;
  Dio dio;

  static HttpUtil _getHttpUtilInstance() {
    if (_httpUtil == null) {
      _httpUtil = HttpUtil();
    }
    return _httpUtil;
  }

  HttpUtil() {
    BaseOptions options = BaseOptions(
      connectTimeout: 10000,
      receiveTimeout: 10000,
    );
    dio = Dio(options);
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      print("========================请求参数===================");
      print("url=${options.uri.toString()}");
      print("params=${options.data}");
      dio.lock();
      String token = await TokenValue.getToken();
      options.headers["token"] = token;
      dio.unlock();
      return options;
    }, onResponse: ((Response e) {
      print("========================请求返回===================");
      print("code=${e.statusCode}");
      print("response=${e.data}");
    }), onError: (DioError e) {
      print("========================请求错误===================");
      print("message =${e.message}");
    }));
  }

  Future get(url, {Map<String, dynamic> parameters, Options options}) async {
    Response response;
    try {
      response = await dio.get(url, queryParameters: parameters);
    } catch (e) {
      print(e);
    }
    return response?.data;
  }

  Future post(url, {Map<String, dynamic> parameters, Options options}) async {
    Response response;
    try {
      response = await dio.post(url, queryParameters: parameters);
    } catch (e) {
      print(e);
    }
    return response?.data;
  }
}
