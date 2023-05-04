import 'package:flutter/material.dart';

class ContainerHeader extends StatelessWidget {
  const ContainerHeader({
    super.key, required this.containerHeading,
  });

  final String containerHeading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(
            containerHeading,
            style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xff222222)),
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
