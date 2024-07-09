import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

class GrowthQuestions extends StatelessWidget {
  const GrowthQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: ColorsApp.black,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Autism Test',
          style: TextStyle(
            color: ColorsApp.textColor,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${index + 1}. What is the baby\'s weight now?'),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          Container(
                            height:20,
                            decoration: BoxDecoration(
                                color: ColorsApp.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: ColorsApp.black,width: 2),),
                            width: 20,
                            
                          ),
                          const SizedBox(width: 15,),
                          const Text('yes',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                          const Spacer(flex: 1,),
                          Container(
                            height:20,
                            decoration: BoxDecoration(
                                color: ColorsApp.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: ColorsApp.black,width: 2),),
                            width: 20,

                          ),
                          const SizedBox(width: 15,),
                          const Text('No',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                          const Spacer(flex: 5,),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 30,);
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorsApp.primary,
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: ColorsApp.white),
              ),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
