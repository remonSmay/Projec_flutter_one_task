import 'package:flutter/material.dart';
import 'package:projec_one_course/core/resoures/app_color.dart';

class AppButtonStyle {
AppButtonStyle._();
// ignore: prefer_typing_uninitialized_variables

  
  static ButtonStyle ButtonStyleNext = ElevatedButton.styleFrom(
    backgroundColor:AppColor.buttonColor ,
    foregroundColor: AppColor.primaryColor,
    minimumSize: Size(double.infinity, 56),
    elevation: 0,
    // padding: EdgeInsets.symmetric(vertical: 16),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}