import 'package:flutter/material.dart';


class MenuItemCard extends StatelessWidget {
  const MenuItemCard({
    super.key,
    required this.imageUrl,
    required this.itemType,
    required this.itemName,
    required this.serves,
    required this.servesTime,
    required this.energy,
  });

  final String imageUrl;
  final String itemType;
  final String itemName;
  final String serves;
  final String servesTime;
  final String energy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 96,
      width: 280,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Text(
                  itemType,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    color: Color(0xff606060),
                  ),
                ),
                Text(
                  itemName,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff222222),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Serves $serves| $servesTime",
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xff606060),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      energy,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xffF68945),
                      ),
                    ),
                    const Text(
                      " Kcal",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff747473),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
