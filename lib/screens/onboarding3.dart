import 'package:baraeim/screens/home_for_artical.dart';
import 'package:flutter/material.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({super.key});

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 140,left: 100),
            child: Row(
              children: [
                Text('Modern ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Color(0xFF000000) ),),
                Text('parenting',style: TextStyle(fontWeight: FontWeight.w700,fontSize:20,color: Color(0xFFF687B3) ),),

              ],
            ),
          ),
          const SizedBox(height: 56,),
          Image.asset(
              height: 358,
              width:300 ,
              'assets/onboarding3.png'),
          ElevatedButton(
            style:ElevatedButton.styleFrom(
              fixedSize:const Size(300,20),
              backgroundColor: const Color(0xFFF687B3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),

            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeForArtical()));

            },
            child:
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: const Text('Get Started',style: TextStyle(color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: 0.12,),),
                ),

          ),


        ],
      ),
    );
  }
}
