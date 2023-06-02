import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../commom_widget/custum_text.dart';
import '../../../screen_constants/screen_constants.dart';
import '../../../themes/common_colors.dart';
import '../../../themes/common_strings.dart';
import '../../../themes/image_paths.dart';
import '../../homepage_widets/button_container.dart';

class ShopHeaderSliderContainer extends StatelessWidget {
  const ShopHeaderSliderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          
          height: ScreenConstant.size155,
          width: ScreenConstant.screenWidthFull,
          color: AppColors.mixedyellow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: ScreenConstant.spacingAllLarge,
                child: text(
                    content: AppStrings.upto31per,
                    fontSize: FontSize.s24,
                    color: AppColors.colorBlack,
                    fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Padding(
                padding: ScreenConstant.spacingAllLarge,
                child: Row(
                  children: [
                    ButtonWidget(
                      text: AppStrings.getItNow,
                      buttoncolor: AppColors.yellowColor,
                      textSize: FontSize.s12,
                      textcolor: AppColors.colorBlack,
                      buttonHeight: ScreenConstant.size34,
                      buttonWidth: ScreenConstant.size90,
                    ),
                    text(
                      content: ' *${AppStrings.termsAndCondition} apply',
                      fontSize: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            SizedBox(
              height: ScreenConstant.size155,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: ScreenConstant.size2,
                    color: AppColors.primarycolor,
                  ),
                  // ExpandedLineShop(width:24,),
                  Text(
                    AppStrings.rotimaticAcc,
                    style: TextStyle(
                        fontFamily: 'Indie Flower',
                        fontWeight: FontWeight.w400,
                        fontSize: FontSize.s24,
                        color: AppColors.primarycolor),
                  ),
                  const ExpandedLineShop()
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(AppImages.discountBg),
            ),
          ],
        ),
      ],
    );
  }
}

class ExpandedLineShop extends StatelessWidget {
  const ExpandedLineShop({
    super.key,
    this.width,
    this.height,
  });
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: width ?? ScreenConstant.screenWidthFull,
        height: height ?? ScreenConstant.size2,
        color: AppColors.primarycolor,
      ),
    );
  }
}