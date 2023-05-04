import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotimatic_p1/commom_widget/common_colors.dart';
import 'package:rotimatic_p1/commom_widget/custum_text.dart';
import 'package:rotimatic_p1/screen_constants/screen_constants.dart';
import 'package:rotimatic_p1/themes/common_strings.dart';
import 'package:rotimatic_p1/views/otp_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameconroller = TextEditingController();
  bool isButtonActive = true;

  @override
  void initState() {
    super.initState();
    usernameconroller = TextEditingController();
    final isButtonActive = usernameconroller.text.isNotEmpty;
  }

  @override
  void dispose() {
    usernameconroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _body()),
      backgroundColor: AppColors.primarycolor.withOpacity(0.9),
      resizeToAvoidBottomInset: false,
    );
    // return SafeArea(
    //   child: Stack(
    //     children: [
    //       _bgImage(),
    //       Scaffold(
    //         resizeToAvoidBottomInset: true,
    //         backgroundColor: AppColors.primarycolor.withOpacity(0.9),
    //         body: _body(),
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget _bgImage() {
    return SizedBox(
      height: ScreenConstant.screenHeightFull,
      width: ScreenConstant.screenWidthFull,
      child: SvgPicture.asset(
        'asset/images/login/login_bg.svg',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: ScreenConstant.size230,
          width: ScreenConstant.size230,
          child: Image.asset('asset/rotimaticprod.png'),
        ),

        // Image.asset('asset/rotimaticprod.png'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Login',
                style: textStyle(
                    fontSize: FontSize.s24, color: AppColors.whitecolor),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomText(
                text:
                    "Enter the Phone no or email id to be used while making purchase",
                style: textStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whitecolor,
                ),
              ),
            ],
          ),
        ),
        verticalSpace(),

        bottomContainer(),
      ],
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
              Text(
                AppStrings.emailId,
                style: textStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black2),
              ),
              const SizedBox(
                height: 5,
              ),
              _emailTextfield(),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                    child: Text(
                      "by signing in you accept ",
                      style: TextStyle(
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppStrings.termsAndCondition,
                      style: TextStyle(
                          color: AppColors.colorBlue,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ],
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: ScreenConstant.size50,
                    width: ScreenConstant.screenWidthFull,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: AppColors.primarycolor,
                    ),
                    child: const Center(
                      child: Text(
                        "Send OTP",
                        style: TextStyle(
                          color: AppColors.colorBlackShade3,
                          fontFamily: 'Montserrat',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Or sign up with",
                  style: TextStyle(
                    color: Color(0xff979797),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      log("Facebook login.......");
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xffDFDDDC),
                        ),
                      ),
                      child: SvgPicture.asset('asset/facebook.svg'),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      log("Google sign in");
                    },
                    child: Container(
                      constraints: BoxConstraints(
                          maxHeight: ScreenConstant.defaultIconSize,
                          maxWidth: ScreenConstant.defaultIconSize),
                      padding: const EdgeInsets.all(16),
                      // height: ScreenConstant.defaultIconSize,
                      // width: ScreenConstant.defaultIconSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(
                          color: const Color(0xffDFDDDC),
                        ),
                      ),
                      child: SvgPicture.asset('asset/google.svg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailTextfield() {
    return Container(
      height: ScreenConstant.size56,
      child: TextField(
        controller: usernameconroller,
        keyboardType: TextInputType.emailAddress,
        // style: ,
        decoration: InputDecoration(
          hintText: "Enter here",
          hintStyle: textStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.greyBordercolor),
          border: OutlineInputBorder(
            gapPadding: 1,
            borderSide: const BorderSide(
              color: AppColors.greyBordercolor,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
