import 'package:baraeim/healthy_diet_page/presentation/widgets/header_healthy_diet_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../assets.dart';
import '../../../colors_app.dart';
import '../../data/models/all_healthy_diets_model.dart';
import '../../data/models/healthy_diets_details_model.dart';
import '../../domain/repositories/fech_all_healthy_diet_repository.dart';
import '../../domain/repositories/fech_healthy_diet_details_repository.dart';
import '../widgets/card_healthy_diet.dart';

class HealthyDietDetailsScreen extends StatefulWidget {
  const HealthyDietDetailsScreen({super.key, required this.healthyDietId});

  final AllHealthyDietsModel healthyDietId;

  @override
  State<HealthyDietDetailsScreen> createState() =>
      _HealthyDietDetailsScreenState();
}

HealthyDietDetailsModel healthyDietsDetails = HealthyDietDetailsModel();
List foodDetails = [
  {
    'title': 'Colories',
    'mount': '190',
    'countUnit': 'kcal',
  },
  {
    'title': 'Fat',
    'mount': '90',
    'countUnit': 'g',
  },
  {
    'title': 'Protein',
    'mount': '190',
    'countUnit': 'g',
  },
  {
    'title': 'Carbs',
    'mount': '190',
    'countUnit': 'g',
  },
];

class _HealthyDietDetailsScreenState extends State<HealthyDietDetailsScreen> {
  // fetchData() async {
  //   FetchHealthyDietsDetailsRepository fetchAllHealthyDietsRepository =
  //   FetchHealthyDietsDetailsRepository();
  //   healthyDietsDetails =
  //   await fetchAllHealthyDietsRepository.getAllHealthyDiets(id: widget.healthyDietId);
  //   foodDetails[0]['mount'] = healthyDietsDetails.calories;
  //   foodDetails[1]['mount'] = healthyDietsDetails.fat;
  //   foodDetails[2]['mount'] = healthyDietsDetails.protein;
  //   foodDetails[3]['mount'] = healthyDietsDetails.carbs;
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Column(
        children: [
          HeaderHealthyDietScreen(
            image: widget.healthyDietId.image ?? '',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.healthyDietId.title ?? '',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Icon(Icons.bookmark_border_rounded)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.healthyDietId.name ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      color: ColorsApp.subtitleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      Expanded(

                        flex: 2,

                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${foodDetails[index]['title']}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: ColorsApp.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '${foodDetails[index]['mount']} ${foodDetails[index]['countUnit']} ',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: ColorsApp.subtitleColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: foodDetails.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,

                        ),
                      ),
                      const Spacer(flex: 1,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
