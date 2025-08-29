import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projec_one_course/core/resoures/app_icon.dart';
import 'package:projec_one_course/core/resoures/app_text_style.dart';
import 'package:projec_one_course/core/ui_constants/ui_constants_onbording.dart';
import 'package:projec_one_course/feature/Onboading/ui_model/ui_model_onbording.dart';

class OnbordingPage extends StatefulWidget {
  const OnbordingPage({super.key, required this.indexPages});
  final int indexPages;

  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(onbordingScreens[widget.indexPages].image),
        SizedBox(height: 56),

        SizedBox(
          width: 95,
          height: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              onbordingScreens.length,
              (index) => Container(
          
                width: 27,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(56)),
                  color: index == widget.indexPages ? Colors.black : Color(0xff7C7878)
                ),
              ),
            ),
          ),
        ),

        SizedBox(height: 50),
        Text(
          onbordingScreens[widget.indexPages].title,
          style: AppTextStyle.textTitle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 42),
        Container(
          width: 299,
          height: 48,
          alignment: Alignment.center,
          child: Text(
            "You can easily manage all of your daily tasks in DoMe for free",
            textAlign: TextAlign.center,
            style: AppTextStyle.textDicscription,
          ),
        ),
        SizedBox(height: 107),
      ],
    );
  }
}

// onbordingScreenUiModel[widget.indexPages].image ... what's benefit for widget.indexpages 

    // Align(
    //       alignment: Alignment.topLeft,
    //       child: TextButton(
    //         child: Text("SKIP"),
    //         onPressed: () => print("skip"),
    //       ),
    //     ),

    /*
    
     */