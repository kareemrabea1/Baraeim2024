import '../../data/data_sources/fetch_medicine_details_service.dart';
import '../../data/models/medicine_details_model.dart';

class FetchMedicineDetailsRepository {
  FetchMedicineDetails fetchMedicineDetails = FetchMedicineDetails();

  Future<MedicineDetailsModel> getAllMedicineDiets({required int id}) async {
    final healthyDiets = await fetchMedicineDetails.getMedicineData(id: id);

    return MedicineDetailsModel.fromJson(healthyDiets);
  }
}
