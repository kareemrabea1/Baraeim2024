import 'package:baraeim/colors_app.dart';
import 'package:baraeim/growth_test_page/presentation/pages/growth_test_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../assets.dart';

class PregnantDialog extends StatelessWidget {
  const PregnantDialog({super.key});

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
            Assets.womanImage,
            height: 134,
            width: 134,
          ),

          const Text(
            'To know your child’s health condition, complete all the steps to get the best result.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: ColorsApp.textColor),
            textAlign: TextAlign.center,
          ),

          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GrowthTestPage(),));
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
                      'Ok',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: ColorsApp.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorsApp.white,
                      border: Border.all(color:ColorsApp.primary )
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: ColorsApp.primary),
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
