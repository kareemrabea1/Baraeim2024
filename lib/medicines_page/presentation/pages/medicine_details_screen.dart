import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/medicines_page/data/models/all_medicine_diets_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/models/medicine_details_model.dart';
import '../../domain/repositories/fetch_medicine_details_repository.dart';
import '../widgets/header_medicine_datailsscreen.dart';

class MedicineDetailsScreen extends StatefulWidget {
  const MedicineDetailsScreen({super.key, required this.medicineID});

  final AllMedicineModel medicineID;

  @override
  State<MedicineDetailsScreen> createState() => _MedicineDetailsScreenState();
}

class _MedicineDetailsScreenState extends State<MedicineDetailsScreen> {


  fetchData() async {
    // FetchMedicineDetailsRepository fetchAllHealthyDietsRepository =
    //     FetchMedicineDetailsRepository();
    // widget.medicineDetails = await fetchAllHealthyDietsRepository.getAllMedicineDiets(
    //     id: widget.medicineID);
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    setState(() {});
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Column(
        children: [
          HeaderMedicineDetailsScreen(
            image: widget.medicineID.image ?? '',
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
                      Text(
                        widget.medicineID.name ?? '',
                        style:
                            const TextStyle(fontSize: 24, color: ColorsApp.primary),
                      ),
                      const Icon(Icons.bookmark_border_rounded)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.medicineID.title ?? '',
                    style: const TextStyle(
                        fontSize: 14, color: ColorsApp.subtitleColor),
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
