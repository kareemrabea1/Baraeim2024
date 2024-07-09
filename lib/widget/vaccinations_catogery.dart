import 'package:baraeim/models/item_vaccinations.dart';
import 'package:flutter/material.dart';

class VaccinationsCatogery extends StatefulWidget {
  const VaccinationsCatogery({super.key,required this.itemVaccinations});
  final ItemVaccinations itemVaccinations;

  @override
  State<VaccinationsCatogery> createState() => _VaccinationsCatogeryState();
}

class _VaccinationsCatogeryState extends State<VaccinationsCatogery> {
  bool isDone=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 100,
          width:380 ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFF8C8A8A), // Border color
              // Border width
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:12,top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(widget.itemVaccinations.titel,
                  style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                Row(
                  children: [
                    Text(widget.itemVaccinations.date,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xFF8C8A8A)),),
                    const SizedBox(width: 149,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isDone=!isDone;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8,right: 8,),
                        child: Container(
                          width: 64,
                          height: 29,
                          decoration: BoxDecoration(
                              color: isDone ? const Color(0xFFE3FFDA) : const Color(0xFF78D956),
                              borderRadius: BorderRadius.circular(8)),
                          alignment: Alignment.center,
                          child: Text('Done',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,  color: isDone ? const Color(0xFFA3E58B) : const Color(0xFFE3FFDA),),),
                        ),
                      ),

                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
        SizedBox(height: 8,)
      ],
    );
  }
}
