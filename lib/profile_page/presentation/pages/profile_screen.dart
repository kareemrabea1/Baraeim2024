import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/profile_page/presentation/widgets/card_user_information.dart';
import 'package:baraeim/profile_page/presentation/widgets/footer_profile_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/header_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
              color: ColorsApp.black,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.withOpacity(0.05),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: ListView(
          children: const [
            SizedBox(
              height: 20,
            ),
            HeaderProfileScreen(),
            SizedBox(
              height: 24,
            ),
            CardUserInformation(),
            SizedBox(
              height: 20,
            ),
            FooterProfileScreen(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
