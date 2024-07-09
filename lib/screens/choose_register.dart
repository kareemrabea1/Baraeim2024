import 'package:baraeim/screens/Register_as_mother.dart';
import 'package:baraeim/screens/Register_as_pregrnant.dart';
import 'package:flutter/material.dart';

class ChooseRegister extends StatefulWidget {
  const ChooseRegister({super.key});

  @override
  State<ChooseRegister> createState() => _ChooseRegisterState();
}

class _ChooseRegisterState extends State<ChooseRegister> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 34, right: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign in',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFC78A7)),
            ),
            const Text(
              'If you don’t have an account register',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Row(
              children: [
                Text(
                  'You can ',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Sign up here ! ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.orange),
                ),
              ],
            ),
            const SizedBox(height: 51,),
            Center(
              child: Image.asset(
                height:238 ,
                  width: 184,
                  'assets/logo1.png'),
            ),
            const SizedBox(height: 12,),
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
                    MaterialPageRoute(builder: (context) => const RegisterAsMother()));


              },
              child:
              const Padding(
                padding: EdgeInsets.only(top: 14.0),
                child: Text('Register as mother',style: TextStyle(color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                  letterSpacing: 0.12,),),
              ),

            ),
            const SizedBox(height: 12,),
            ElevatedButton(

              style:ElevatedButton.styleFrom(
                fixedSize:const Size(300,20),
                side:(const BorderSide(color: Color(0xFFF687B3))),
                backgroundColor: const Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),

              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterAsPregrnant()));

              },
              child:
              const Padding(
                padding: EdgeInsets.only(top: 14.0),
                child: Text('Register as pregrnant',style: TextStyle(color: Color(0xFFF687B3),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                  letterSpacing: 0.12,),),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
