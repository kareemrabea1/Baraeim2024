import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

class CardGrowthTest extends StatelessWidget {
  const CardGrowthTest({super.key, required this.number, required this.test, this.onTap});
final int number;
final String test;
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return                 Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsApp.secondary.withOpacity(0.35)),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 47,
            width: 47,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: ColorsApp.secondary),
            child: Text(
              number.toString(),
              style: const TextStyle(
                color: ColorsApp.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            test,
            style: const TextStyle(
                fontSize: 18,
                color: ColorsApp.secondaryDark,
                fontWeight: FontWeight.w500,),
          ),
          const Spacer(),
          InkWell(onTap: onTap,
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: ColorsApp.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'start now',
                style: TextStyle(color: ColorsApp.secondary,fontSize: 14,fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    )
    ;
  }
}
