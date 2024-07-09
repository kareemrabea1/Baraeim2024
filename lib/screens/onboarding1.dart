import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 140,left: 100),
            child: Row(
              children: [
                Text('Mother ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Color(0xFF000000) ),),
                Text('protection',style: TextStyle(fontWeight: FontWeight.w700,fontSize:20,color: Color(0xFFF687B3) ),),

              ],
            ),
          ),
          const SizedBox(height: 56,),
          Image.asset(
            height: 358,
              width:300 ,
              'assets/onborading1.png'),

        ],
      ),
    );
  }
}
