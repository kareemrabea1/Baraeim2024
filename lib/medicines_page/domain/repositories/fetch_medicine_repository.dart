import 'package:dio/dio.dart';

import '../../../strings.dart';
import '../../data/data_sources/fetch_all_medicine_service.dart';
import '../../data/models/all_medicine_diets_model.dart';

class FetchAllMedicineRepository {
  FetchAllMedicine fetchAllMedicine = FetchAllMedicine();

  Future<List<AllMedicineModel>> getAllMedicine() async {
    final  healthyDiets = await fetchAllMedicine.getAllMedicineData();

    return healthyDiets.map((element)=>AllMedicineModel.fromJson(element)).toList();
  }
}

