import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/healthy_diet_page/presentation/pages/healthy_diet_screen.dart';
import 'package:baraeim/medicines_page/presentation/widgets/card_medicine.dart';
import 'package:flutter/material.dart';

import '../../data/models/all_medicine_diets_model.dart';
import '../../domain/repositories/fetch_medicine_repository.dart';

class MedicinesScreen extends StatefulWidget {
  const MedicinesScreen({super.key});

  @override
  State<MedicinesScreen> createState() => _MedicinesScreenState();
}

List<AllMedicineModel> medicineDetails = [
  AllMedicineModel(
    id: 1,
    image: Assets.medicine,
    title:'Used to treat severe acne, it is extremely dangerous to use during pregnancy and can lead to serious birth defects.',
    name: 'Isotretinoin',
  ),
  AllMedicineModel(
    id: 2,
    image: Assets.medicine2,
    title:'Anticoagulant can increase the risk of bleeding in the fetus and affect fetal development',
    name: 'Warfarin',
  ),
  AllMedicineModel(
    id: 3,
    image: Assets.medicine3,
    title:'An antibiotic that can affect the formation of teeth and bones of the fetus.',
    name: 'Tetracycline',
  ),
  AllMedicineModel(
    id: 4,
    image: Assets.medicine4,
    title:'It can affect the development of kidneys in the fetus.',
    name: 'Ibuprofen',
  ),
  AllMedicineModel(
    id: 5,
    image: Assets.medicine5,
    title:' It is used to treat hypertension and has a negative effect on the fetal kidneys.',
    name: 'ACE inhibitors',
  ),
  AllMedicineModel(
    id: 6,
    image: Assets.medicine6,
    title:' It is used to treat some cases of psoriasis and has significant negative effects on the fetus such as congenital malformations.',
    name: 'Acitretin',
  ),
];

fetchData() async {
  FetchAllMedicineRepository fetchAllHealthyDietsRepository =
      FetchAllMedicineRepository();
  medicineDetails = await fetchAllHealthyDietsRepository.getAllMedicine();
}

class _MedicinesScreenState extends State<MedicinesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextField(
              controller: controller,
              cursorColor: ColorsApp.primary,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsApp.textColor,
                ),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsApp.textColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsApp.primary,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .72,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return CardMedicine(
                    medicine: medicineDetails[index],
                  );
                },
                itemCount: medicineDetails.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
