import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/growth_test_page/presentation/widgets/card_growth_test.dart';
import 'package:baraeim/growth_test_page/presentation/widgets/list_growth_test.dart';
import 'package:flutter/material.dart';

class GrowthTestPage extends StatelessWidget {
  const GrowthTestPage({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: ColorsApp.secondary,
      body: Stack(alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(Assets.patternBackGround,),fit: BoxFit.fill)),
                child: AppBar(
                  title: const Text(
                    'Growth test',
                    style: TextStyle(color: ColorsApp.white, fontSize: 16),
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
              const Spacer(),

            ],
          ),
          const ListGrowthTest()
        ],
      ),
    );
  }
}
