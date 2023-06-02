import 'dart:developer';

import 'package:flutter/material.dart';

class MakeSomeRoties extends StatelessWidget {
  const MakeSomeRoties({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}