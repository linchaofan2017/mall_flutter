import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {
  static void showToast(String msg){
    Fluttertoast.showToast(msg: msg);
  }
}