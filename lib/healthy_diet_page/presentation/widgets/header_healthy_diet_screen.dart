import 'package:flutter/material.dart';

import '../../../assets.dart';
import '../../../colors_app.dart';

class HeaderHealthyDietScreen extends StatelessWidget {
  const HeaderHealthyDietScreen({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return           Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        alignment: Alignment.topLeft,
        clipBehavior: Clip.hardEdge,
        height: size.height / 2,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.blackBackGround,
            ),
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: const Text(
                'A Healthy Diet',
                style: TextStyle(
                  fontSize: 15,
                  color: ColorsApp.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            Expanded(
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ))
          ],
        )

    );
  }
}
