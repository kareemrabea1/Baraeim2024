import 'package:baraeim/models/item_alarm3.dart';
import 'package:flutter/material.dart';

class Alarm3Catogery extends StatefulWidget {
  const Alarm3Catogery({super.key,required this.itemAlarm3});
  final ItemAlarm3 itemAlarm3;

  @override
  State<Alarm3Catogery> createState() => _Alarm3CatogeryState();
}

class _Alarm3CatogeryState extends State<Alarm3Catogery> {
  bool switchValue = false;
  bool active=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 99,
      color:active? Color(0xFFFFF4F8):Color(0xFFD4D4D4),
      child: Padding(
        padding: const EdgeInsets.only(left:34,right: 34,top: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text(widget.itemAlarm3.time,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400 ),),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 3),
                  child: Text(widget.itemAlarm3.subTime,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400 ),),
                ),
               Spacer(),
                Switch(
                  activeTrackColor: Color(0xFFF687B3),
                  inactiveTrackColor: Color(0xFFD4D4D4),
                  inactiveThumbColor: Color(0xffffffff),
                  activeColor: Color(0xffffffff),

                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                      active=!active;
                    });

                  },
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
