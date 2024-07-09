import 'package:baraeim/models/item_alarm2.dart';
import 'package:flutter/material.dart';

class Alarm2Catogery extends StatefulWidget {
  const Alarm2Catogery({super.key,required this.itemAlarm2});
  final ItemAlarm2 itemAlarm2;

  @override
  State<Alarm2Catogery> createState() => _Alarm2CatogeryState();
}

class _Alarm2CatogeryState extends State<Alarm2Catogery> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:34,right: 34),
      child: Column(
        children: [
          const SizedBox(height:54),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(widget.itemAlarm2.titel,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                 Spacer(),
                  // SizedBox(height: 20),
                  Switch(
                    activeTrackColor: Color(0xFFF687B3),
                    inactiveTrackColor: Color(0xFFD4D4D4),
                    inactiveThumbColor: Color(0xffffffff),
                    activeColor: Color(0xffffffff),
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });

                    },
                  ),
                ],
              ),
              Text(widget.itemAlarm2.subtitel,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xFFF687B3)),),


            ],
          ),
          SizedBox(height: 17,),




        ],
      ),
    );
  }
}
