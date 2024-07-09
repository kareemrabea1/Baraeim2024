import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../assets.dart';
import '../../data/models/all_medicine_diets_model.dart';
import '../pages/medicine_details_screen.dart';

class CardMedicine extends StatelessWidget {
  const CardMedicine({super.key, required this.medicine});

  final AllMedicineModel medicine;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MedicineDetailsScreen(medicineID: medicine),
            ));
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 20)
          ],
          color: ColorsApp.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                medicine.image ?? '',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      medicine.name ?? '',
                      style: const TextStyle(
                          fontSize: 15, color: ColorsApp.textColor),
                    ),
                    Text(
                      medicine.title ?? '',
                      style: const TextStyle(
                          fontSize: 13, overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
