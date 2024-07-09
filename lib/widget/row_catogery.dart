import 'package:baraeim/models/ex_model.dart';
import 'package:baraeim/models/item_row.dart';
import 'package:baraeim/screens/exercise1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowCatogery extends StatefulWidget {
  const RowCatogery({super.key,required this.exModel});
  final ExModel exModel;

  @override
  State<RowCatogery> createState() => _RowCatogeryState();
}

class _RowCatogeryState extends State<RowCatogery> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 31,left: 28),
          child: Image.asset(
              height: 34,
              width: 55,
              widget.exModel.imagePath),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27,left: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(

                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Exercise1(exModel:widget.exModel,)));

                },
                child:Text(widget.exModel.title,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
              ),

              Text(widget.exModel.shortDes,style: const TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xFF8C8A8A)),),

            ],
          ),
        )


      ],
    );
  }
}
