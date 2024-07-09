import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

import '../../../assets.dart';

class HeaderProfileScreen extends StatelessWidget {
  const HeaderProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 90,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            color: ColorsApp.black.withOpacity(.3),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
        color: ColorsApp.secondary,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: ColorsApp.white, width: 2),
              shape: BoxShape.circle,
            ),
            child: Image.asset(Assets.profileImage),
          ),
          const SizedBox(
            width: 13,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Itunuoluwa Abidoye',
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorsApp.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: ColorsApp.white,
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '@Itunuoluwa',
                style: TextStyle(
                  fontSize: 11,
                  color: ColorsApp.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
