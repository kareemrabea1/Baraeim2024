import 'package:baraeim/models/ex_model.dart';
import 'package:baraeim/models/item_row.dart';
import 'package:baraeim/widget/row_catogery.dart';
import 'package:flutter/material.dart';


class DailyExercise extends StatefulWidget {
  const DailyExercise({super.key});

  @override
  State<DailyExercise> createState() => _DailyExerciseState();
}

class _DailyExerciseState extends State<DailyExercise> {
  // final List<ItemRow> itemRow = [
  //   ItemRow(
  //       image: 'assets/exercise1.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  //   ItemRow(
  //       image: 'assets/exercise2.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  //   ItemRow(
  //       image: 'assets/exercise3.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  //   ItemRow(
  //       image: 'assets/exercise4.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  //   ItemRow(
  //       image: 'assets/exercise5.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  //   ItemRow(
  //       image: 'assets/exercise6.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  //   ItemRow(
  //       image: 'assets/exercise7.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  //   ItemRow(
  //       image: 'assets/exercise8.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  //   ItemRow(
  //       image: 'assets/exercise9.png',
  //       Text1: 'Viparita Karani',
  //       Text2: 'First lie down on your back and exhale, then sit up.'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title:  const Padding(
            padding: EdgeInsets.only(
              left: 64,
              right: 64,
              top: 23,
            ),
            child: Text(
              "Daily Exercise",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF1E1E1E),
              ),
            ),
          ),
          leading: Padding(
            padding:
                const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
            child: IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.black,),
              onPressed: () {
                Navigator.pop(context);},
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            return RowCatogery(exModel: exercises[index]);
          },
        ));
  }
}
