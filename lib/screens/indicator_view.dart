import 'package:baraeim/screens/home_for_artical.dart';
import 'package:baraeim/screens/onboarding1.dart';
import 'package:baraeim/screens/onboarding2.dart';
import 'package:baraeim/screens/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class HomePage extends StatelessWidget {
  final _controller=PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 680,

            child: PageView(
              controller: _controller,
              children: const [
                OnBoarding1(),
                OnBoarading2(),
                OnBoarding3(),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: TextButton(
                    onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeForArtical()));  },
                    child: const Text('SKIP',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),)),
              ),
              const Spacer(),
              Center(
                child: SmoothPageIndicator(controller: _controller,
                    count: 3,
                  effect: SwapEffect(
                    activeDotColor: const Color(0xFFF687B3),
                    dotColor: Colors.grey.withOpacity(0.5),

                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right:20),
                child: TextButton(
                    onPressed: () {


                    },
                    child: const Text('NEXT',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),)),
              ),
            ],

          )
        ],
      ),
    );
  }
}


