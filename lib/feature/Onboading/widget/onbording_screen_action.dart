import 'package:flutter/material.dart';
import 'package:projec_one_course/core/common_widget/buttons_action.dart';
import 'package:projec_one_course/core/resoures/app_button.dart';
import 'package:projec_one_course/core/resoures/app_text_style.dart';
import 'package:projec_one_course/core/ui_constants/ui_constants_onbording.dart';

class OnbordingScreenAction extends StatelessWidget {
  const OnbordingScreenAction({
    super.key,
    required this.pageIndex,
    required this.buttonPrimaryProsses,
    required this.buttonScondProsses,
  });
  final int pageIndex;
  final VoidCallback? buttonPrimaryProsses;
  final VoidCallback? buttonScondProsses;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonsAction(
            onPressed: buttonPrimaryProsses,
            titleButton: pageIndex < (onbordingScreens.length) - 1
                ? "NEXT"
                : "GET STARTED",
            buttonStyle: AppButtonStyle.ButtonStyleNext,
          ),

          // ButtonsAction(onPressed: buttonScondProsses, titleButton: "Back"),
          TextButton(
            onPressed: buttonScondProsses,
            child: Text("BACK", style: AppTextStyle.buttonBack),
          ),
        ],
      ),
    );
  }
}
// Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(onPressed: () => print('next'), child: Text("BACK")),
//               ElevatedButton(
//                 onPressed: () => print('next'),
//                 child: Text("NEXT"),
//               
// 
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [
        //   // TextButton(onPressed: () => onPressed!(), child: Text(buttonText!)),
        //   // ElevatedButton(onPressed: () => print('next'), child: Text("NEXT"),style: ButtonStyle(),),
        //   ButtonsAction(onPressed:() => ,)
        // ]),
//             ],
//           ),
//         ),
    