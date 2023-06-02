import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotimatic_p1/themes/common_colors.dart';
import 'package:rotimatic_p1/commom_widget/custum_text.dart';
import 'package:rotimatic_p1/screen_constants/screen_constants.dart';
import 'package:rotimatic_p1/themes/common_strings.dart';
import 'package:rotimatic_p1/themes/image_paths.dart';
import 'package:rotimatic_p1/views/homepage_widets/accessories_container.dart';

import 'shop_widgets/quickSearch.dart';
import 'shop_widgets/shop_header_slider.dart';
import 'shop_widgets/shop_scrolling_widget.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  final List<String> _quickSearchList = ["All", "Offers", "Good Roti Mixes", "Warraty"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xff1E1E1E).withOpacity(0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ShopHeader(),
              ShopHeaderSlider(),
              const ShopSearchField(),
              QuickSearch(selectedIndex: _selectedIndex, quickSearchList: _quickSearchList),
              const ShopScrollingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}




class ShopAccessories extends StatelessWidget {
  const ShopAccessories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: ScreenConstant.spacingAllExtraSmall,
      height: 400,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: ScreenConstant.size8,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AccessoriesContainer(
              imageUrl: AppImages.rotibasket,
              backgroundColor: AppColors.lightpink.withOpacity(0.7),
              itemName: AppStrings.rotibasket,
              itemPrice: AppStrings.rotibasketPrice),
          AccessoriesContainer(
            // height: ScreenConstant.size220,
            imageUrl: AppImages.flourContainer,
            backgroundColor: AppColors.veryLightYellow.withOpacity(0.7),
            itemName: AppStrings.flourContainer,
            itemPrice: AppStrings.flourContainerPrice,
          ),
          AccessoriesContainer(
            imageUrl: AppImages.dispenserCleaning,
            backgroundColor: AppColors.veryLightYellow.withOpacity(0.7),
            itemName: AppStrings.dispenserCleaningSol,
            itemPrice: AppStrings.dispenserCleaningPrice,
          ),
          AccessoriesContainer(
            imageUrl: AppImages.flourContainer,
            backgroundColor: AppColors.lightpink.withOpacity(0.7),
            itemName: AppStrings.shippingBox,
            itemPrice: AppStrings.shippingBoxPrice,
          ),
        ],
      ),
    );
  }
}




class ShopSearchField extends StatelessWidget {
  const ShopSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size20),
      child: TextField(
        // style: textStyle(fontSize: FontSize.s16,color: AppColors.colorBlackShade2),
        decoration: InputDecoration(
            // hintText: AppStrings.whatAreYouLookFor,
            // hintStyle: textStyle(fontSize: FontSize.s16,color: AppColors.colorBlackShade2),
            label: Row(
              children: [
                SvgPicture.asset(AppImages.searchIconSvg),
                text(
                    content: AppStrings.whatAreYouLookFor,
                    fontSize: FontSize.s16,
                    color: AppColors.colorBlackShade2)
              ],
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
            )),
      ),
    );
  }
}



class ShopHeader extends StatelessWidget {
  const ShopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: ScreenConstant.size20,
          right: ScreenConstant.size20,
          bottom: ScreenConstant.size20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shop",
                style: textStyle(
                    fontSize: FontSize.s22,
                    color: AppColors.black2,
                    fontWeight: FontWeight.w600),
              ),
              Image.asset(
                AppImages.supportPng,
                height: ScreenConstant.size50,
                width: ScreenConstant.size50,
              ),
            ],
          ),
          text(content: AppStrings.shopHeaderDesc, fontSize: FontSize.s14)
        ],
      ),
    );
  }
}
