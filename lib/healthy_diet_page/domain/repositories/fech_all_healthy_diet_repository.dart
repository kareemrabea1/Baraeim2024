import 'package:dio/dio.dart';

import '../../../strings.dart';
import '../../data/data_sources/fetch_all_healthy_diets_service.dart';
import '../../data/models/all_healthy_diets_model.dart';

class FetchAllHealthyDietsRepository {
  FetchAllHealthyDiets fetchAllHealthyDiets = FetchAllHealthyDiets();

  Future<List<AllHealthyDietsModel>> getAllHealthyDiets() async {
    final  healthyDiets = await fetchAllHealthyDiets.getHealthyDietData();

    return healthyDiets.map((element)=>AllHealthyDietsModel.fromJson(element)).toList();
  }
}

