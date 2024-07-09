import 'package:baraeim/main.dart';
import 'package:baraeim/models/item_alarm2.dart';
import 'package:baraeim/screens/alarm3.dart';
import 'package:baraeim/widget/alarm2_catogery.dart';
import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import '../utils/fcm.dart';




class Alarm2 extends StatefulWidget {
  const Alarm2({super.key});

  @override
  State<Alarm2> createState() => _Alarm2State();
}


class _Alarm2State extends State<Alarm2> {
  bool switchValue = false;
  final List<ItemAlarm2> itemAlarm2=[
    ItemAlarm2(titel: 'Alarm Sound', subtitel: 'Bip Bip'),
    ItemAlarm2(titel: 'Vibrate    ', subtitel: 'Basic Call'),
    ItemAlarm2(titel: 'Snooze     ', subtitel: '5 minutes, 3 times'),
  ];
  DateTime selectedTime =DateTime.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
         final now =  DateTime.now();
         selectedTime = DateTime(now.year, now.month, now.day,picked.hour, picked.minute);



      });
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF3F8) ,
        leading:Padding(
          padding: const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
          child: IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: () {Navigator.pop(context);},
          ),
        ),
      ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Stack(
         children:[
           Container(
             width: 428,
             height: 312,
             decoration: const ShapeDecoration(
               color: Color(0xFFFFF3F8),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(32),
                   bottomRight: Radius.circular(32),
                 ),
               ),
             ),
           ),
             Positioned(
             top: 54,
             left: 40,
               child: SizedBox(
             width: 300,
             child: Column(
               children: [
                 // const Text(
                 //   'Alarm will ring in 7 h 57 minutes.',
                 //   textAlign: TextAlign.center,
                 //   style: TextStyle(
                 //     color: Color(0xFF1E1E1E),
                 //     fontSize: 14,
                 //     fontFamily: 'Poppins',
                 //     fontWeight: FontWeight.w400,
                 //     height: 0,
                 //   ),
                 // ),
                 Text(
                   'Selected Time: ${TimeOfDay.fromDateTime(selectedTime).format(context)}',
                   style: const TextStyle(fontSize: 18),
                 ),
                 const SizedBox(height: 20),
                 ElevatedButton(
                   onPressed: (){_selectTime(context);} ,
                   child: const Text('Select Time'),
                 ),

               ],
             ),
           ),

           ),


        ],
           ),
           ListView.builder(
             shrinkWrap: true,
             physics:const NeverScrollableScrollPhysics(),
             itemCount:itemAlarm2.length,
             itemBuilder: (BuildContext context, int index){
             return Alarm2Catogery(itemAlarm2:itemAlarm2[index] ,);},
           ),
           Padding(
             padding: const EdgeInsets.only(top:80,left: 34,right: 34),
             child: ElevatedButton(
               style:ElevatedButton.styleFrom(
                 backgroundColor: const Color(0xFFF687B3),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16.0),
                 ),

               ),
               onPressed: ()async {
                 await NotificationService.showScheduledNotificatoin(
                   scheduleTime:selectedTime,
                   id:  (DateTime.now().millisecondsSinceEpoch/100000).toInt(),
                   title:'تنبيه',
                   body: 'موعد الدواء',
                 );
                 // final alarmSettings = AlarmModel(
                 //   id: (DateTime.now().millisecondsSinceEpoch/100000).toInt(),
                 //   dateTime: selectedTime,
                 //   assetAudioPath: 'assets/sounds/alarm.mp3',
                 //   loopAudio: true,
                 //   fadeDuration: 3.0,
                 //   notificationTitle: 'تنبيه',
                 //   notificationBody: 'موعد الدواء',
                 //   enableNotificationOnKill: true,
                 //   monday: true,
                 //   tuesday : true,
                 //   wednesday : true,
                 //   thursday : true,
                 //   friday : true,
                 //   saturday : true,
                 //   sunday : true,
                 //   active : true,
                 //
                 // );
                 // await PeriodicAlarm.setPeriodicAlarm(alarmModel: alarmSettings);

                 Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const Alarm3()));

               },
               child: const Row(
                 mainAxisAlignment:MainAxisAlignment.center,
                 children: [
                   SizedBox(width: 10,),
                   Text('Save',style: TextStyle(color: Colors.white,
                     fontSize: 16,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w600,
                     letterSpacing: 0.12,),),
                 ],
               ),
             ),
           ),
           const SizedBox(height: 88,)
      ],

             ),
     ),
    );


  }
}
