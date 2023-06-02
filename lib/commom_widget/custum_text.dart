import 'package:flutter/material.dart';
import 'package:rotimatic_p1/themes/common_colors.dart';
import 'package:rotimatic_p1/screen_constants/screen_constants.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? textScaleFactor;
  final Color? textColor;
  final double? fontsize;
  final FontWeight? fontWeight;
  final TextOverflow overflow;
  final TextStyle? style;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    this.textScaleFactor,
    this.textAlign,
    this.style,
    this.overflow = TextOverflow.visible,
    this.textColor,
    this.fontsize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      textAlign: textAlign ?? TextAlign.start,
      textScaleFactor: textScaleFactor ?? 1,
      style: style ??
          TextStyle(
            color: textColor ?? AppColors.whitecolor,
            fontSize: fontsize ?? FontSize.s10,
            fontWeight: fontWeight ?? FontWeight.w400,
          ),
      overflow: overflow,
    );
  }
}

TextStyle textStyle(
    {required double fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontFamily: "Montserrat",
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? AppColors.colorBlack);
}

// ----------------- common text -------------------------
Text text(
    {required String content,
    double? scaleFactor,
    required double fontSize,
    FontWeight? fontWeight,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    Color? color}) {
  return Text(
    content,
    textScaleFactor: scaleFactor ?? 1,
    maxLines: maxLines,
    textAlign: textAlign,
    overflow: overflow,
    style: textStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
  );
}




// class CustumText { 
//   Widget text(
//       {required String title, double? fontSize, FontWeight? fontWeight, Color? color}) {
//     return Text(
//       title,
//       style: TextStyle(
//         fontFamily: "Montserrat",
//         fontWeight: fontWeight ?? FontWeight.w500,
//         fontSize: fontSize ?? 14,
//         color: const Color(0xff606060),
//       ),
//     );
//   }

  
// }