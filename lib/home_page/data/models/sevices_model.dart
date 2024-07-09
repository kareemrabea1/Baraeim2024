import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

import '../../../healthy_diet_page/presentation/pages/healthy_diet_screen.dart';
import '../../../medicines_page/presentation/pages/medicines_screen.dart';
import '../../../screens/daily_exercise.dart';
import '../../../screens/modern_parenting.dart';

class ServiceModel {
  final String image;
  final String text;
  final Color color;
  final Widget page;

  ServiceModel({
    required this.text,
    required this.image,
    required this.color,
    required this.page,
  });

  static List<ServiceModel> service = [
    ServiceModel(
      text: 'Daily Exercise',
      image: Assets.exerciseIcon,
      color: ColorsApp.primary, page: const DailyExercise(),
    ),
    ServiceModel(page: const HealthyDietScreen(),
      text: 'A Healthy Diet',
      image: Assets.healthyDiet,
      color: ColorsApp.green,
    ),
    ServiceModel(page: const MedicinesScreen(),
      text: 'Drugs Influencing Pregnancy',
      image: Assets.drugsImage,
      color: ColorsApp.indio,
    ),

    ServiceModel(page: const ModernParenting(),
      text: 'Modern parenting',
      image: Assets.stepsIcon,
      color: ColorsApp.orange,
    ),
  ];
}
