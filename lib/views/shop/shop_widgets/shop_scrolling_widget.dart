import 'package:flutter/material.dart';
import 'package:rotimatic_p1/views/shop/product_description/product_description_screen.dart';

import '../../../screen_constants/screen_constants.dart';
import '../../../themes/common_colors.dart';
import '../../../themes/common_strings.dart';
import '../../../themes/image_paths.dart';
import '../../homepage_widets/accessories_container.dart';
import '../shop_screen.dart';
import 'shop_accessories_heading.dart';

class ShopScrollingWidget extends StatelessWidget {
  const ShopScrollingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AccessoriesHeading(
                heading: AppStrings.accessories,
                description: AppStrings.everyRotimatic,
              ),
              const ShopAccessories(),
              SizedBox(
                height: ScreenConstant.size220,
                width: ScreenConstant.screenWidthFull,
                child: Image.asset(
                  AppImages.warrantyBanner,
                  fit: BoxFit.fill,
                ),
              ),
              const AccessoriesHeading(
                  heading: AppStrings.goodRotiMixes,
                  description: AppStrings.goodRotiMixesDes),
              Container(
                padding: ScreenConstant.spacingAllExtraSmall,
                height: 580,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: ScreenConstant.size8,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    AccessoriesContainer(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProductDescriptionScreen(),));
                      },
                        imageUrl: AppImages.greenGodess,
                        backgroundColor:
                            AppColors.lightpink.withOpacity(0.7),
                        itemName: AppStrings.greenGodess,
                        itemPrice: AppStrings.greenGodessPrice),
                    AccessoriesContainer(
                      // height: ScreenConstant.size220,
                      imageUrl: AppImages.familyFirst,
                      backgroundColor:
                          AppColors.veryLightYellow.withOpacity(0.7),
                      itemName: AppStrings.familyFirst,
                      itemPrice: AppStrings.greenGodessPrice,
                    ),
                    AccessoriesContainer(
                      imageUrl: AppImages.littleSuper,
                      backgroundColor:
                          AppColors.veryLightYellow.withOpacity(0.7),
                      itemName: AppStrings.littleSuper,
                      itemPrice: AppStrings.greenGodessPrice,
                    ),
                    AccessoriesContainer(
                      imageUrl: AppImages.sweetPeop,
                      backgroundColor:
                          AppColors.lightpink.withOpacity(0.7),
                      itemName: AppStrings.sweetPeop,
                      itemPrice: AppStrings.greenGodessPrice,
                    ),
                    AccessoriesContainer(
                      imageUrl: AppImages.sweetPeop,
                      backgroundColor:
                          AppColors.lightpink.withOpacity(0.7),
                      itemName: AppStrings.allGoodThings,
                      itemPrice: AppStrings.greenGodessPrice,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}