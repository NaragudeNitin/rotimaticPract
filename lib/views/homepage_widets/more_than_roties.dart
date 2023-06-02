import 'package:flutter/material.dart';

import 'menu_item_card.dart';

class MoreThanRoties extends StatelessWidget {
  const MoreThanRoties({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
