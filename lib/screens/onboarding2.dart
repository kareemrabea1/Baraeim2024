import 'package:flutter/material.dart';

class OnBoarading2 extends StatefulWidget {
  const OnBoarading2({super.key});

  @override
  State<OnBoarading2> createState() => _OnBoarading2State();
}

class _OnBoarading2State extends State<OnBoarading2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 140,left: 46),
            child: Row(
              children: [
                Text('Vaccination ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Color(0xFF000000) ),),
                Text('notifications',style: TextStyle(fontWeight: FontWeight.w700,fontSize:20,color: Color(0xFFF687B3) ),),

              ],
            ),
          ),
          const SizedBox(height: 56,),
          Image.asset(
              height: 358,
              width:300 ,
              'assets/onborading2.png'),

        ],
      ),
    );
  }
}
