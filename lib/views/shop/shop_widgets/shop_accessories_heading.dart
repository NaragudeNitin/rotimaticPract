import 'package:flutter/material.dart';

import '../../../commom_widget/custum_text.dart';
import '../../../screen_constants/screen_constants.dart';
import '../../../themes/common_colors.dart';

class AccessoriesHeading extends StatelessWidget {
  const AccessoriesHeading({
    super.key,
    required this.heading,
    required this.description,
  });

  final String heading;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: ScreenConstant.spacingAllLarge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: ScreenConstant.spacingAllExtraSmall,
            child: text(
                content: heading,
                fontSize: FontSize.s18,
                fontWeight: FontWeight.w600),
          ),
          text(
            content: description,
            fontSize: FontSize.s14,
            color: AppColors.colorBlackShade1,
          ),
        ],
      ),
    );
  }
}