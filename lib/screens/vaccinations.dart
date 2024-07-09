import 'package:baraeim/models/item_vaccinations.dart';
import 'package:baraeim/screens/tips.dart';
import 'package:baraeim/widget/vaccinations_catogery.dart';
import 'package:flutter/material.dart';

class Vaccinations extends StatefulWidget {
  const Vaccinations({super.key});

  @override
  State<Vaccinations> createState() => _VaccinationsState();
}

class _VaccinationsState extends State<Vaccinations> {
  bool isDone=false;
  final List<ItemVaccinations> itemVaccinations =[
    ItemVaccinations(titel: 'BCG (Bacillus Calmette Guerin) vaccine', date: '04-Jan-2024'),
    ItemVaccinations(titel: 'Hepatitis B (HepB)', date: '04-Jan-2024'),
    ItemVaccinations(titel: 'Hexavalent vaccine (6-in-1 vaccine)', date: '04-Mar-2024'),
    ItemVaccinations(titel: """Pneumococcal conjugate vaccine
 (PCV) -1st Dose""", date: '04-Mar-2024'),
    ItemVaccinations(titel: 'Rotavirus vaccine (Rvv)- 1st Dose', date: '04-Mar-2024'),
    ItemVaccinations(titel: """Hexavalent vaccine (6-in-1 vaccine)- 2nd
Dose""", date: '04-May-2024'),
    ItemVaccinations(titel: """Pneumococcal conjugate vaccine
 (PCV) -2nd Dose""", date: '04-May-2024'),
    ItemVaccinations(titel: 'Rotavirus vaccine (Rvv)- 2nd Dose', date: '04-May-2024'),
    ItemVaccinations(titel: """Hexavalent vaccine (6-in-1 vaccine)- 3rd
Dose""", date: '04-Jul-2024'),
    ItemVaccinations(titel: """Pneumococcal conjugate vaccine
 (PCV) -3rd Dose""", date: '04-Jul-2024'),
    ItemVaccinations(titel: 'Rotavirus vaccine (Rvv)- 3rd Dose', date: '04-Jul-2024'),
    ItemVaccinations(titel: "MMR vaccine (measles, Mumps, and rubella)", date: '04-Jan-2024'),
    ItemVaccinations(titel: 'Varicella', date: '04-Jan-2024'),
    ItemVaccinations(titel: """Pneumococcal conjugate vaccine
 (PCV)- 4th Dose""", date: '04-Jan-2024'),
    ItemVaccinations(titel: """DTap (Diphtheria, tetanus, &acellular
pertussis)""", date: '04-Jan-2024'),
    ItemVaccinations(titel:"""DTap (Diphtheria, tetanus, &acellular
pertussis)-2nd Dose""", date: '04-Jan-2024'),
    ItemVaccinations(titel: """MMR vaccine (measles, Mumps, and
 rubella)-2nd""", date: '04-Jan-2024'),
    ItemVaccinations(titel: 'Varicella-2nd Dose', date: '04-Jan-2024'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 64,
            right: 64,
            top: 23,),
          child: Text('Vaccinations',style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Color(0xFF1E1E1E), ),),
        ),
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
              Image.asset("assets/vaccinations.png"),
              Positioned(
                top: 32,
                left: 32,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor:const Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                  ),),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Tips()));

                  },
                  child: const Text('Tips',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFFE17BB4)),),
                ),
              ),


            ]
            ) ,
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        width: 20,
                          "assets/Line 1.png"),
                      const SizedBox(width: 8,),
                      const Text('At Birth',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),
                      const SizedBox(height: 8,),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: ListView.builder(
                shrinkWrap: true,
                physics:NeverScrollableScrollPhysics(),
                itemCount: 2,itemBuilder: (BuildContext context, int index){
                return VaccinationsCatogery(itemVaccinations: itemVaccinations[index+0],

                );
              },),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                          width: 20,
                          "assets/Line 1.png"),
                      const SizedBox(width: 8,),
                      const Text(' Month 2',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),
                      const SizedBox(height: 8,),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: ListView.builder(
                shrinkWrap: true,
                physics:NeverScrollableScrollPhysics(),
                itemCount: 3,itemBuilder: (BuildContext context, int index){
                return VaccinationsCatogery(itemVaccinations: itemVaccinations[index+2],

                );
              },),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                          width: 20,
                          "assets/Line 1.png"),
                      const SizedBox(width: 8,),
                      const Text(' Month 4',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),


                    ],

                  ),
                  const SizedBox(height: 8,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics:NeverScrollableScrollPhysics(),
                    itemCount: 3,itemBuilder: (BuildContext context, int index){
                    return VaccinationsCatogery(itemVaccinations: itemVaccinations[index+5],

                    );
                  },),



                ],
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                          width: 20,
                          "assets/Line 1.png"),
                      const SizedBox(width: 8,),
                      const Text(' Month 6',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),


                    ],

                  ),
                  const SizedBox(height: 8,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics:NeverScrollableScrollPhysics(),
                    itemCount: 3,itemBuilder: (BuildContext context, int index){
                    return VaccinationsCatogery(itemVaccinations: itemVaccinations[index+8],

                    );
                  },),




                ],
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                          width: 20,
                          "assets/Line 1.png"),
                      const SizedBox(width: 8,),
                      const Text(' Month 12',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),


                    ],

                  ),
                  const SizedBox(height: 8,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics:NeverScrollableScrollPhysics(),
                    itemCount: 2,itemBuilder: (BuildContext context, int index){
                    return VaccinationsCatogery(itemVaccinations: itemVaccinations[index+11],

                    );
                  },),




                ],
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                          width: 20,
                          "assets/Line 1.png"),
                      const SizedBox(width: 8,),
                      const Text(' Month 18',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),


                    ],

                  ),
                  const SizedBox(height: 8,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics:NeverScrollableScrollPhysics(),
                    itemCount: 2,itemBuilder: (BuildContext context, int index){
                    return VaccinationsCatogery(itemVaccinations: itemVaccinations[index+13],

                    );
                  },),




                ],
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                          width: 20,
                          "assets/Line 1.png"),
                      const SizedBox(width: 8,),
                      const Text('Year 5',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400 ),),


                    ],

                  ),
                  const SizedBox(height: 8,),
                  ListView.builder(
                    shrinkWrap: true,
                    physics:NeverScrollableScrollPhysics(),
                    itemCount: 3,itemBuilder: (BuildContext context, int index){
                    return VaccinationsCatogery(itemVaccinations: itemVaccinations[index+15],

                    );
                  },),




                ],
              ),
            ),





          ],

        ),
      ),


    );
  }
}
