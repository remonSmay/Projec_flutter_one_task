import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projec_one_course/core/resoures/app_color.dart';
import 'package:projec_one_course/core/resoures/app_icon.dart';
import 'package:projec_one_course/feature/Onboading/onbording_screens.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    navigateToScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: 
               SvgPicture.asset(AppIcon.iconLogoPage),),
            
          
          SizedBox(height: 23),
          Center(child: SvgPicture.asset(AppIcon.iconTextPage)),
        ],
      ),
    );
  }

  void navigateToScreen() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 700),
          pageBuilder: (context, animation, secondaryAnimation) =>
              OnbordingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }
}
