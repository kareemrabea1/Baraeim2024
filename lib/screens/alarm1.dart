import 'package:baraeim/colors_app.dart';
import 'package:baraeim/screens/alarm%202.dart';
import 'package:flutter/material.dart';

class Alarm1 extends StatefulWidget {
  const Alarm1({super.key});

  @override
  State<Alarm1> createState() => _Alarm1State();
}

class _Alarm1State extends State<Alarm1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorsApp.white,

      body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(top:186,left: 138,right: 137),
            child: Image.asset(
              height: 165,
                width: 153,
                'assets/alarm clock.png'
            ),
          ),

          Text('No alarm yet',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400,),),

    Padding(
      padding: const EdgeInsets.only(top:145,left: 34,right: 34),
      child: ElevatedButton(
        style:ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF687B3),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16.0),
    ),

        ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Alarm2()));

      },
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Icon(Icons.add,color: Color(0xffffffff),),
          SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Text('Add Alarm',style: TextStyle(color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.09,
              letterSpacing: 0.12,),),
          ),
        ],
      ),
      ),
    ),
      ],
    ),

    );
  }
}
