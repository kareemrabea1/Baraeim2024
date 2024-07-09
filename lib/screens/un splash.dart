import 'package:baraeim/screens/indicator_view.dart';
import 'package:baraeim/screens/onboarding1.dart';
import 'package:flutter/material.dart';

class Un_splach extends StatefulWidget {
  const Un_splach({super.key});

  @override
  State<Un_splach> createState() => _Un_splachState();
}

class _Un_splachState extends State<Un_splach> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage() ));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:135,right: 107),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              height:173.56,
                width:  182,
                'assets/logo.png'),
            Image.asset('assets/logo_name.png'),

          ],
        ),
      ),



    );
  }
}
