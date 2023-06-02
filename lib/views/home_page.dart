import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'homepage_widets/accessories_container.dart';
import 'homepage_widets/app_header.dart';
import 'homepage_widets/container_header.dart';
import 'homepage_widets/make_some_roti.dart';
import 'homepage_widets/more_than_roties.dart';
import 'homepage_widets/slider_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset('asset/logos/homepagelogo.svg'),
        onPressed: () {
          log("pressing Home button....");
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const rotimaticHeader(),
            const MakeSomeRoties(),
            const MoreThanRoties(),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 350,
                maxWidth: 342,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ContainerHeader(containerHeading: "Good Roti-Mixes"),
                    SlideContainer(
                      imageurl: Image.asset("asset/images/image 23.png"),
                      itemName: "Green Goddess",
                      itemPrice: "40.00",
                      itemDescription:
                          "This unique Spinach and Spirulina formula is rich in iron and loaded with nutrients",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const ContainerHeader(
                      containerHeading: "Rotimatic Accessories"),
                  Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(top: 12),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        AccessoriesContainer(
                            imageUrl:
                                'asset/images/MicrosoftTeams-image_96_720x 1.png',
                            backgroundColor: Color(0xffFFF5DE),
                            itemName: 'Dispenser Cleaning Solution',
                            itemPrice: '34.00'),
                        AccessoriesContainer(
                            imageUrl: 'asset/images/box_720x 1.png',
                            backgroundColor: Color(0xffFFEBDE),
                            itemName: 'Shiping Box',
                            itemPrice: '132.00'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      "Watch Our Users unboxing Rotimatic",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          color: Color(0xff222222)),
                    ),
                  ),
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const UnboxingContainer(),
                        const UnboxingContainer(),
                        Container(
                          width: 312,
                          height: 190,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 176,
                                width: 312,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'asset/images/unboxing image.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(38),
                                          color: const Color(0xffF68945),
                                        ),
                                        child: SvgPicture.asset(
                                            'asset/logos/play 1.svg'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "Rotimatic Part1 Unboxing and Review",
                                style: TextStyle(
                                  color: Color(0xff222222),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontFamily: 'Monteserrat',
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "Vinay Goel",
                                style: TextStyle(
                                  color: Color(0xff606060),
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class UnboxingContainer extends StatelessWidget {
  const UnboxingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 190,
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 176,
            width: 312,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'asset/images/unboxing image.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: const Color(0xffF68945),
                    ),
                    child: SvgPicture.asset(
                      'asset/logos/play 1.svg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Rotimatic Part1 Unboxing and Review",
            style: TextStyle(
              color: Color(0xff222222),
              fontWeight: FontWeight.w600,
              fontSize: 14,
              fontFamily: 'Monteserrat',
              fontStyle: FontStyle.normal,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Vinay Goel",
            style: TextStyle(
              color: Color(0xff606060),
              fontFamily: 'Montserrat',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
