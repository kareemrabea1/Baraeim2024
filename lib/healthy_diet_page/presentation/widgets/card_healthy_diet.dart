import 'package:flutter/material.dart';
import '../../../assets.dart';
import '../../../colors_app.dart';
import '../../data/models/all_healthy_diets_model.dart';
import '../pages/healthy_diet_details_screen.dart';

class CardHealthyDiet extends StatelessWidget {
  const CardHealthyDiet({super.key, required this.healthyDiets, });

  final AllHealthyDietsModel healthyDiets;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) =>  HealthyDietDetailsScreen(healthyDietId: healthyDiets),));
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage(Assets.blackBackGround),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Expanded(child: Image.asset(healthyDiets.image??"")),
            Text(
              healthyDiets.title??'',
              style: const TextStyle(
                  fontSize: 16,
                  color: ColorsApp.white,

                  fontWeight: FontWeight.w400,

              ),
              maxLines: 2,
            )
          ],
        ),
      ),
    );
    ;
  }
}
