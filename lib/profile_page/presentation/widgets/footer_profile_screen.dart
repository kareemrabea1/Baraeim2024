import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/profile_page/presentation/widgets/card_action_image.dart';
import 'package:flutter/material.dart';

class FooterProfileScreen extends StatelessWidget {
  const FooterProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      decoration: BoxDecoration(
          color: ColorsApp.white, borderRadius: BorderRadius.circular(5)),
      child:  const Column(
        children: [
          CardActionImage(
            title: 'Add account',
            subtitle: 'It makes you add more than one account',
            image: Assets.userIcon,
          ),
          SizedBox(
            height: 25,
          ),
          CardActionImage(
            title: 'Log out',
            subtitle: 'Further secure your account for safety',
            image: Assets.logoutIcon,
          ),
        ],
      ),
    );
  }
}
