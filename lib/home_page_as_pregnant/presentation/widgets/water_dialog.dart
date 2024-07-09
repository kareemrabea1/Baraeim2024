import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../assets.dart';

class WaterDialog extends StatelessWidget {
  const WaterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0))),
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 70,
        // vertical: 30,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            Assets.bottleWaterImage,
            height: 134,
            width: 134,
          ),
          const Text(
            'Did you drink water?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Reduces heartburn, acidity and indigestion problems.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: ColorsApp.textColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 14,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              height: 25,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorsApp.primary,
              ),
              child: const Text(
                'yes',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: ColorsApp.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
