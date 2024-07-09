import 'package:baraeim/models/item_alarm3.dart';
import 'package:baraeim/widget/alarm3_catogery.dart';
import 'package:flutter/material.dart';

class Alarm3 extends StatefulWidget {
  const Alarm3({super.key});

  @override
  State<Alarm3> createState() => _Alarm3State();
}

class _Alarm3State extends State<Alarm3> {
  bool switchValue = false;
  final  List<ItemAlarm3> itemAlarm3=[
    ItemAlarm3(time: '8:00', subTime:'pm'),
    ItemAlarm3(time:'10:00', subTime:'pm'),
    ItemAlarm3(time: '6:00', subTime:'pm'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:Padding(
          padding: const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
          child: IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: () {Navigator.pop(context);},
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(itemCount: itemAlarm3.length,
          itemBuilder: (BuildContext context, int index) {
          return Alarm3Catogery(itemAlarm3:itemAlarm3[index]);
          },
        ),
      )
    );
  }
}
