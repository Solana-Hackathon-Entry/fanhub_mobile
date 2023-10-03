import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CommonFunction {
  static showToast({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT, // or Toast.LENGTH_LONG
      gravity: ToastGravity.BOTTOM, // You can change the position of the toast
      timeInSecForIosWeb: 1, // The duration for which the toast is visible (in seconds)
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}