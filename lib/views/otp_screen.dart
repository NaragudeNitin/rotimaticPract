import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotimatic_p1/themes/common_colors.dart';
import 'package:rotimatic_p1/screen_constants/screen_constants.dart';
import 'package:rotimatic_p1/themes/common_strings.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:rotimatic_p1/views/home_page.dart';
import 'package:rotimatic_p1/views/homepage_widets/button_container.dart';
import 'package:rotimatic_p1/views/login_page.dart';
import '../commom_widget/custum_text.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  fontSize: FontSize.s24,
                  color: AppColors.whitecolor,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, left: 24, bottom: 12, right: 24),
            child: CustomText(
              text: AppStrings.otpDescr,
              style: textStyle(
                  fontSize: FontSize.s14,
                  color: AppColors.whitecolor,
                  fontWeight: FontWeight.w500),
            ),
          ),

          bottomContainer(),
        ],
      )),
    );
  }

  Widget _topImage() {
    return Container(
      width: ScreenConstant.screenWidthFull,
      alignment: Alignment.topRight,
      child: SizedBox(
        height: ScreenConstant.size250,
        width: ScreenConstant.screenWidthFull,
        child:
            // SvgPicture.asset('asset/images/otpscreen/otpscreenimage.svg'),

            Image.asset(
          'asset/images/otpscreen/otpscreenimage.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget bottomContainer() {
    return Expanded(
      child: Container(
        height: ScreenConstant.screenHeightHalf,
        width: ScreenConstant.screenWidthFull,
        decoration: const BoxDecoration(
          color: AppColors.whitecolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              Row(
                children: [
                  text(
                    content: "Johndoe@gmail.com",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  SvgPicture.asset('asset/images/otpscreen/Vector.svg'),
                ],
              ),
              SizedBox(height: ScreenConstant.size14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textFieldOTP(),
                  _textFieldOTP(),
                  _textFieldOTP(),
                  _textFieldOTP(),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Resend OTP',
                    style: TextStyle(
                        fontFamily: 'Montserrat',

                        fontSize: FontSize.s14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primarycolor),)
                  ),
                ],
              ),
              const Spacer(),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ButtonWidget(text: 'Submit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last}) {
    return SizedBox(
      height: ScreenConstant.size55,
      width: ScreenConstant.size55,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          color: AppColors.primarycolor,
          strokeWidth: 1,
          dashPattern: const [
            8,
            4,
          ],
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Colors.black12.withOpacity(0)),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2, color: Colors.purple.withOpacity(0)),
                  borderRadius: BorderRadius.circular(12)),
            ),

            // decoration: InputDecoration(

            // ),
          ),
        ),
      ),
    );
  }
}
