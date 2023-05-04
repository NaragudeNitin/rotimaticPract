import 'package:flutter/material.dart';
import 'package:rotimatic_p1/commom_widget/common_colors.dart';

class AccessoriesContainer extends StatelessWidget {
  const AccessoriesContainer({
    super.key, required this.imageUrl, required this.backgroundColor, required this.itemName, required this.itemPrice,
  });

  final String imageUrl;
  final Color backgroundColor;
  final String itemName;
  final String itemPrice; 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 171,
      height: 190,
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 118,
            width: 163,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
                imageUrl),
          ),
          const SizedBox(
            height: 8,
          ),
           Text(
            itemName,
            style: const TextStyle(
                color: AppColors.black2,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                fontFamily: 'Monteserrat'),
          ),
          const SizedBox(
            height: 8,
          ),
           Text(
            "\$$itemPrice",
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
    );
  }
}

