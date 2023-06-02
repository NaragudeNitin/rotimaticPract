import 'package:flutter/material.dart';
import 'package:rotimatic_p1/themes/common_colors.dart';

class AccessoriesContainer extends StatelessWidget {
  const AccessoriesContainer({
    super.key,
    required this.imageUrl,
    required this.backgroundColor,
    required this.itemName,
    required this.itemPrice,
    this.child,
    this.originalPrice,
    this.discount,
    this.height,
    this.width, this.boxfit, this.onTap,
  });

  final String imageUrl;
  final Color? backgroundColor;
  final String itemName;
  final String itemPrice;
  final Widget? child;
  final String? originalPrice;
  final double? height;
  final double? width;
  final BoxFit? boxfit;
  final void Function()? onTap;
  final int? discount;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 6,
              fit: FlexFit.tight,
              child: Container(
                height: 118,
                width: 163,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: child ?? Image.asset(imageUrl, fit: boxfit,),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Flexible(
              flex: 2,
              child: Text(
                itemName,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: const TextStyle(
                    color: AppColors.black2,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: 'Monteserrat',),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
    
              child: Row(
                children: [
                  Text(
                    itemPrice,
                    style: const TextStyle(
                      color: Color(0xffF68945),
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
