import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotimatic_p1/commom_widget/common_colors.dart';
import 'homepage_widets/accessories_container.dart';
import 'homepage_widets/container_header.dart';
import 'homepage_widets/menu_item_card.dart';
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


      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     height: 64,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       mainAxisSize: MainAxisSize.max,
      //       children: [
      //         SvgPicture.asset('asset/logos/bag-2.svg'),
      //         SvgPicture.asset('asset/logos/support 1.svg'),
      //         SvgPicture.asset('asset/logos/health 1.svg'),
      //         SvgPicture.asset('asset/logos/Group 184.svg')
      //       ],
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              height: 236,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffFFF1D1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Let's make some Rotis",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Image.asset('asset/images/Oven 1.png')
                    ],
                  ),
                  const Text(
                    "Go through guided walk through to make your forst batch of Roties and enjoy it your family and friends",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                            ),
                            onPressed: () {
                              log("Make Roti Pressed...");
                            },
                            child: const Center(
                              child: Text("Make Roti"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "More than Rotis",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff222222)),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Go through our recipies which can be made with Rotimatic",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff606060),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 114,
                    width: MediaQuery.of(context).size.width,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        MenuItemCard(
                            imageUrl: 'asset/images/image 27.png',
                            itemType: 'Happy Kids',
                            itemName: 'Taco Salad Bowl',
                            serves: '2',
                            servesTime: '30',
                            energy: '358'),
                        // MenuItemCard(),
                      ],
                    ),
                  ),
                  Container(
                    height: 114,
                    width: MediaQuery.of(context).size.width,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        MenuItemCard(
                            imageUrl: 'asset/images/image 28.png',
                            itemType: 'Dessert',
                            itemName: 'Sweet Kesar Milk Poli',
                            serves: '4',
                            servesTime: '45',
                            energy: '358'),
                        MenuItemCard(
                            imageUrl: 'asset/images/image 28.png',
                            itemType: 'Dessert',
                            itemName: 'Sweet Kesar Milk Poli',
                            serves: '4',
                            servesTime: '45',
                            energy: '358'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
