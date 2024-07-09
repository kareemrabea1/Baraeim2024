import 'package:dio/dio.dart';

import '../../../strings.dart';
import '../../data/data_sources/fetch_all_healthy_diets_service.dart';
import '../../data/data_sources/fetch_healthy_diets_details_service.dart';
import '../../data/models/all_healthy_diets_model.dart';
import '../../data/models/healthy_diets_details_model.dart';

class FetchHealthyDietsDetailsRepository {
  FetchHealthyDietsDetails fetchHealthyDietsDetails = FetchHealthyDietsDetails();

  Future<HealthyDietDetailsModel> getAllHealthyDiets({required int id}) async {
    final  healthyDiets = await fetchHealthyDietsDetails.getHealthyDietData(id: id);

    return HealthyDietDetailsModel.fromJson(healthyDiets);
  }
}

