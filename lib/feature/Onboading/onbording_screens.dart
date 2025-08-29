import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_one_course/core/resoures/app_icon.dart';
import 'package:projec_one_course/core/resoures/app_text_style.dart';
import 'package:projec_one_course/core/ui_constants/ui_constants_onbording.dart';
import 'package:projec_one_course/feature/Onboading/widget/onbording_screen.page.dart';
import 'package:projec_one_course/feature/Onboading/widget/onbording_screen_action.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  final PageController _pageController = PageController();
  int PageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {},
                child: Text("SKIP", style: AppTextStyle.buttonSkip),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onbordingScreens.length,
                itemBuilder: (BuildContext context, int index) =>
                    OnbordingPage(indexPages: index),
                onPageChanged: (index) => setState(() => PageIndex = index),
              ),
            ),

            OnbordingScreenAction(
              pageIndex: PageIndex,
              buttonPrimaryProsses: () => _pageController.animateToPage(
                ++PageIndex,
                duration: Duration(seconds: 1),
                curve: Curves.easeInOutCubic,
              ),
              buttonScondProsses: () {
                _pageController.animateToPage(
                  --PageIndex,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOutCubic,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
