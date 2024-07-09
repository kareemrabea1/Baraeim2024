import 'package:flutter/material.dart';

import '../../../assets.dart';
import '../../../colors_app.dart';

class CardBabyDetails extends StatelessWidget {
  const CardBabyDetails({super.key, required this.image, required this.value, required this.text});
final String image;
final String value;
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 20,
        ),
         SizedBox(height: 4,),
         Text(
          value,
          style: const TextStyle(
            color: ColorsApp.textColor,
            fontSize: 13,fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 4,),

         Text(
          text,
          style: const TextStyle(
            color: ColorsApp.textColor,
            fontSize: 13,fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
