import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'shop_header_slider_container.dart';

class ShopHeaderSlider extends StatelessWidget {
   ShopHeaderSlider({
    super.key,
  });

  final ValueNotifier<int> activeIndex = ValueNotifier(0);

  final List<Widget> sliderContainerList = const [
    ShopHeaderSliderContainer(),
    ShopHeaderSliderContainer(),
    ShopHeaderSliderContainer(),
    ShopHeaderSliderContainer(),
    ShopHeaderSliderContainer(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: activeIndex,
      builder: (context, value, child) => 
       CarouselSlider(
        items: sliderContainerList,
    
        options: CarouselOptions(
          onPageChanged: (index, reason) {
          print(index);
        },
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.98,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
    );
  }

  // Widget buildCarousalContainer(int index) => Container();
}
