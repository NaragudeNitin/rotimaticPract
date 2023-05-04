import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotimatic_p1/commom_widget/common_colors.dart';
import 'package:rotimatic_p1/screen_constants/screen_constants.dart';
import 'package:rotimatic_p1/themes/common_strings.dart';

import '../commom_widget/custum_text.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor.withOpacity(0.9),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              _topImage(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomText(
                  text: AppStrings.enterOtp,
                  style: textStyle(
                      fontSize: FontSize.s24, color: AppColors.whitecolor, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: ScreenConstant.size12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomText(
                  text: AppStrings.otpDescr,
                  style: textStyle(
                      fontSize: FontSize.s14, color: AppColors.whitecolor, fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                child: Container(
                  height: ScreenConstant.screenHeightHalf,
                  color: Colors.black,
                

                ),
              )
            ],
          )),
    );
  }

  Widget _topImage() {
    return Container(
      width: ScreenConstant.screenWidthFull,
              alignment: Alignment.topRight,
              child: SizedBox(
                  height: ScreenConstant.size260,
                  width: ScreenConstant.screenWidthFull,
                  child: 
                  // SvgPicture.asset('asset/images/otpscreen/otpscreenimage.svg'),
                  
                  Image.asset('asset/images/otpscreen/otpscreenimage.png', fit: BoxFit.fill,),
                  
                  ),
            );
  }

  Widget bottomContainer() {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.whitecolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        // color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
