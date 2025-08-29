import 'package:flutter/material.dart';
import 'package:projec_one_course/feature/Splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}