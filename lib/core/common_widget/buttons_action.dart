import 'package:flutter/material.dart';
import 'package:projec_one_course/core/resoures/app_text_style.dart';

class ButtonsAction extends StatelessWidget {
  const ButtonsAction({
    super.key,
    this.onPressed,
    this.titleButton,
    this.style,
    this.isScond = false, this.buttonStyle,
  });
  final bool isScond;
  final VoidCallback? onPressed;
  final String? titleButton;
  final TextStyle? style;
  final ButtonStyle? buttonStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Text(
        " $titleButton ",
        style: isScond ? AppTextStyle.buttonBack : AppTextStyle.buttonNext,
      ),
    );
  }
}
