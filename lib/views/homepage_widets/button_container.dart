import 'package:flutter/material.dart';

import '../../themes/common_colors.dart';
import '../../screen_constants/screen_constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.buttoncolor,
    this.textcolor,
    this.fontWeight,
    this.buttonHeight,
    this.buttonWidth, 
    this.textSize,
  });

  final String text;
  final Color? buttoncolor;
  final Color? textcolor;
  final FontWeight? fontWeight;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight ?? ScreenConstant.size50,
      width: buttonWidth ?? ScreenConstant.screenWidthFull,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: buttoncolor ?? AppColors.primarycolor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textcolor ?? AppColors.whitecolor,
            fontFamily: 'Montserrat',
            fontStyle: FontStyle.normal,
            fontWeight: fontWeight ?? FontWeight.w600,
            fontSize: textSize ?? 16,
          ),
        ),
      ),
    );
  }
}
