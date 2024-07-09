import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../../data/models/all_healthy_diets_model.dart';
import '../../domain/repositories/fech_all_healthy_diet_repository.dart';
import '../widgets/card_healthy_diet.dart';

class HealthyDietScreen extends StatefulWidget {
  const HealthyDietScreen({super.key});

  @override
  State<HealthyDietScreen> createState() => _HealthyDietScreenState();
}

List<AllHealthyDietsModel> allHealthyDiets = [
  AllHealthyDietsModel(
      id: 1,
      name: 'Fried Riced with egg Fresh ',
      title: 'Fried Riced with egg Fresh ',
      image: Assets.foodImage),
  AllHealthyDietsModel(
      id: 1,
      name: 'Spinach salad Fresh ',
      title: 'Spinach salad Fresh  ',
      image: Assets.ImageFood2),
  AllHealthyDietsModel(
      id: 1,
      name: 'Lean meat with grilled vegetables',
      title: 'meat with grilled vegetables',
      image: Assets.ImageFood3),
  AllHealthyDietsModel(
      id: 1,
      name: 'Grilled fish with baked sweet potato ',
      title: 'Grilled fish with baked sweet potato  ',
      image: Assets.ImageFood4),
  AllHealthyDietsModel(
      id: 1,
      name: 'Lentil soup',
      title: 'Lentil soup ',
      image: Assets.ImageFood5),
  AllHealthyDietsModel(
      id: 1,
      name: 'Hummus, tomato and cucumber salad',
      title: 'Hummus, tomato and cucumber salad ',
      image: Assets.ImageFood6),
  AllHealthyDietsModel(
      id: 1,
      name: 'Fresh Fruit',
      title: 'Fresh Fruit Cocktail',
      image: Assets.ImageFood7),
  AllHealthyDietsModel(
      id: 1,
      name: 'Greek yogurt with seasonal fruits and nuts',
      title: 'Greek yogurt with seasonal fruits and nuts',
      image: Assets.ImageFood8),



];

fetchData() async {
  FetchAllHealthyDietsRepository fetchAllHealthyDietsRepository =
      FetchAllHealthyDietsRepository();
  allHealthyDiets = await fetchAllHealthyDietsRepository.getAllHealthyDiets();
}

class _HealthyDietScreenState extends State<HealthyDietScreen> {
  @override
  void initState() {
    // fetchData();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: ColorsApp.black,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'A Healthy Diet',
          style: TextStyle(
            color: ColorsApp.textColor,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(34.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return CardHealthyDiet(
              healthyDiets: allHealthyDiets[index],
            );
          },
          itemCount: allHealthyDiets.length,
        ),
      ),
    );
  }
}
