import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rotimatic_p1/screen_constants/screen_constants.dart';
import 'package:rotimatic_p1/themes/image_paths.dart';

class ProductDescriptionScreen extends StatefulWidget {
  const ProductDescriptionScreen({super.key});

  @override
  State<ProductDescriptionScreen> createState() =>
      _ProductDescriptionScreenState();
}

class _ProductDescriptionScreenState extends State<ProductDescriptionScreen> {
  final List<String> banners = [
    AppImages.greenGodess,
    AppImages.greenGodess,
    AppImages.greenGodess,
  ];

   int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back))
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenConstant.size220,
                    width: double.infinity,
                    child: CarouselSlider.builder(
                      itemCount: banners.length,
                      itemBuilder: (context, index, _) => Image.asset(banners[index],fit: BoxFit.fill,),
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          }, autoPlay: false,viewportFraction: 0.97),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < banners.length; i++)
                        Container(
                          height: 13,
                          width: 13,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: currentIndex == i ? Colors.blue : Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(2, 2))
                              ]),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
