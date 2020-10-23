import 'package:shared_preferences/shared_preferences.dart';

class SPUtil {
  ///获取字符串类型
  static Future<String> getString(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  ///保存字符串类型
  static Future putString(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setString(key, value);
  }

  ///获取int类型
  static Future<int> getInt(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(key);
  }

  ///保存int类型
  static Future putInt(String key, int value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setInt(key, value);
  }

  ///获取bool类型
  static Future<bool> getBool(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(key);
  }

  ///保存bool类型
  static Future putBool(String key, bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setBool(key, value);
  }

  ///获取double类型
  static Future<double> getDouble(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(key);
  }

  ///保存double类型
  static Future putDouble(String key, double value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setDouble(key, value);
  }

  ///获取List<String>类型
  static Future<List<String>> getStringList(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getStringList(key);
  }

  ///保存List<String>类型
  static Future putStringList(String key, List<String> value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setStringList(key, value);
  }

  static Future remove(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.remove(key);
  }
}

class TokenValue {
  static const _TOKEN_KEY = "token";
  static String _token;

  static Future<String> getToken() async {
    ///获取保存的token
    if (_token == null || _token.isEmpty) {
      _token = await SPUtil.getString(_TOKEN_KEY) ?? null;
    }
    return _token;
  }

  ///保存token
  static void saveToken(String token) {
    _token = token;
    SPUtil.putString(_TOKEN_KEY, token);
  }

  ///移除token
  static void removeToken() {
    _token = null;
    SPUtil.remove(_TOKEN_KEY);
  }
}
