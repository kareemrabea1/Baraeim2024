import 'dart:async';

import 'package:baraeim/assets.dart';
import 'package:baraeim/home_page/presentation/widgets/pregrnant_dialog.dart';
import 'package:baraeim/screens/growth_test.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../colors_app.dart';
import '../../../listhome_for_artical.dart';

class HomeScreenAsPregnant extends StatefulWidget {
  const HomeScreenAsPregnant({super.key});

  @override
  State<HomeScreenAsPregnant> createState() => _HomeScreenAsPregnantState();
}

class _HomeScreenAsPregnantState extends State<HomeScreenAsPregnant> {
  List<ChartData> data = [];

  @override
  void initState() {
    data = [
      ChartData(value: 20, day: 1),
      ChartData(value: 25, day: 2),
      ChartData(value: 30, day: 3),
      ChartData(value: 40, day: 4),
      ChartData(value: 90, day: 5),
      ChartData(value: 50, day: 6),
      ChartData(value: 100, day: 7),
    ];
    // Future.delayed(Duration(seconds: 10),() {
    //
    // },);
    Timer.periodic(const Duration(minutes: 20), (timer) {
      showDialog(
        context: context,
        builder: (context) {
          return const PregnantDialog();
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  color: ColorsApp.primary.withOpacity(0.3)),
              child: Row(
                children: [
                  Image.asset(Assets.imageBaby),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Text(
                                  'Jun 23,20204 years',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,

                                  ),
                                ),
                              ),
                              Image.asset(Assets.birthDayImage),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: ColorsApp.primary),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Blood Group',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: ColorsApp.white),
                                ),
                                Text(
                                  'B+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: ColorsApp.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: ColorsApp.primary),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: ColorsApp.white),
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: ColorsApp.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF687B3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),

                            ),
                            onPressed:(){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  GrowthTestScreen()));
                            } ,

                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: ColorsApp.primary),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Test',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorsApp.white),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Basic Details ',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),boxShadow:[const BoxShadow(color: Colors.grey,blurRadius: 10,spreadRadius: 1)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('50Cm',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
                        const SizedBox(height: 4,),
                        const Text('Length',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                        const SizedBox(height: 10,),
                        Image.asset(Assets.chart1)
                        
                      ],
                    ),
                  ),
                ),
const SizedBox(width: 10,),
                Expanded(
                  child: Container(padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),boxShadow:[const BoxShadow(color: Colors.grey,blurRadius: 10,spreadRadius: 1)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('20kg',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
                        const SizedBox(height: 4,),
                        const Text('Weight',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                        const SizedBox(height: 10,),
                        Image.asset(Assets.chart2)

                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
             //    Container(color: Colors.indigo,
             //      height: 170,
             //      child: SfCartesianChart(
             //        margin: EdgeInsets.all(10),
             //        borderWidth: 0,
             //        backgroundColor: Colors.transparent,
             //        plotAreaBorderWidth: 0,
             //        plotAreaBorderColor: Colors.transparent,
             //        primaryXAxis: NumericAxis(
             //          minimum: 17,
             //          maximum: 100,
             //          isVisible: false,
             //          interval: 1,
             //          borderColor: Colors.transparent,
             //          borderWidth: 0,
             //        ),
             //        primaryYAxis: NumericAxis(
             //          minimum: 0,
             //          maximum: 8,
             //          isVisible: false,
             //          interval: 100,
             //          borderColor: Colors.transparent,
             //          borderWidth: 0,
             //        ),
             //        series: <ChartSeries<ChartData, int>>[
             //          SplineAreaSeries(
             //            dataSource: data,
             //            xValueMapper: (datum, index) => datum.day,
             //            yValueMapper: (datum, index) => datum.value,
             //            gradient: LinearGradient(colors: [Colors.red,Colors.red]),
             //
             //          )
             //        ],
             //      ),
             //    ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Modern parenting',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 211,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              ContantModel.listBaby[index].image,
                            ),
                          ),
                        ),
                        child: ContantModel.listBaby[index].isVideo
                            ? Image.asset(Assets.videoImage)
                            : const SizedBox.shrink(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        ContantModel.listBaby[index].text,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ColorsApp.black,
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: ContantModel.listBaby.length),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  double value = 0;
  int day = 0;

  ChartData({
    required this.value,
    required this.day,
  });
}
