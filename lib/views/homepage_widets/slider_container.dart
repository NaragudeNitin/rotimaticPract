import 'package:flutter/material.dart';

class SlideContainer extends StatelessWidget {
  const SlideContainer({
    super.key, required this.imageurl, required this.itemName, required this.itemPrice, required this.itemDescription, this.child,
  });
  final Image imageurl;
  final String itemName;
  final String itemPrice;
  final String itemDescription;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 250,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: imageurl,
              ),
              Positioned(
                left: 180,
                top: 115,
                child: Container(
                  height: 28,
                  width: 130,
                  padding: const EdgeInsets.symmetric(
                      vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xffDFFFE7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Iron-Rich for Women", //here i can add assistanceText
                    style: TextStyle(
                        color: Color(0xff42BC61),
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        fontFamily: 'Monteserrat'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text(
                itemName,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff000000),
                ),
              ),
               Text(
                '\$$itemPrice',
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xffF68945),
                ),
              ),
            ],
          ),
           Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              itemDescription,
              style: const TextStyle(
                  color: Color(0xff606060),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Monteserrat'),
            ),
          ),
          // const SizedBox(
          //   height: 16,
          // ),
          // Row(
          //   children: [
          //     Image.asset('asset/images/image 29.png'),
          //     const Text(
          //       "  Spirulina Powder",
          //       style: TextStyle(
          //         color: Color(0xff000000),
          //         fontFamily: 'Montserrat',
          //         fontStyle: FontStyle.normal,
          //         fontWeight: FontWeight.w500,
          //         fontSize: 12,
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 14,
          //     ),
          //     Image.asset('asset/images/image 30.png'),
          //     const Text(
          //       "Spinach Powder",
          //       style: TextStyle(
          //         color: Color(0xff000000),
          //         fontFamily: 'Montserrat',
          //         fontStyle: FontStyle.normal,
          //         fontWeight: FontWeight.w500,
          //         fontSize: 12,
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 14,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}