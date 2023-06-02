import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../themes/common_colors.dart';

class rotimaticHeader extends StatelessWidget {
  const rotimaticHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('asset/images/image 22.png'),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 27,
                width: 64,
                decoration: const BoxDecoration(
                  color: AppColors.lightgreen,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Paired",
                    style: TextStyle(
                        color: AppColors.lightgreen2,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        fontFamily: 'Monteserrat'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  log("clicked on notification Icon");
                },
                child: SvgPicture.asset('asset/logos/notification.svg'),
              ),
              const SizedBox(
                width: 14,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: GestureDetector(
                  onTap: () {
                    log("Checking for profile");
                  },
                  child: Image.asset('asset/images/image 24.png'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
