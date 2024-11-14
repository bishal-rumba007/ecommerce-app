import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class SnackBars {
  static void showWarningSnackBar(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColor.brandYellow,
      textColor: Colors.black,
      fontSize: 14.0,
    );
  }

  static void showErrorSnackBar(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: AppColor.containerRed,
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }

  static void showSuccessSnackBar(String message, {ToastGravity? gravity}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity ?? ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColor.cyanGreen,
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }
}
