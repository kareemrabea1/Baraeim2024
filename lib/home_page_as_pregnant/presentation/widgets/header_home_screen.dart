import 'dart:math';

import 'package:baraeim/home_page/presentation/widgets/card_baby_details.dart';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';

import '../../../assets.dart';
import '../../../colors_app.dart';

class HeaderHomeScreen extends StatefulWidget {
  const HeaderHomeScreen({super.key});

  @override
  State<HeaderHomeScreen> createState() => _HeaderHomeScreenState();
}

class _HeaderHomeScreenState extends State<HeaderHomeScreen> {
  CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();
  late DateTime _selectedDateNotAppBBar;

  void initState() {
    _selectedDateNotAppBBar = DateTime.now();
    super.initState();
  }

  Random random = new Random();
  int selectIndex=2;
  @override
  Widget build(BuildContext context) {
   var size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44.0),
      child: Column(
        children: [
          // CalendarAgenda(
          //   backgroundColor: ColorsApp.white,
          //   fullCalendar: false,selectedDayPosition: SelectedDayPosition.center,
          //   fullCalendarScroll: FullCalendarScroll.horizontal,
          //   controller: _calendarAgendaControllerNotAppBar,
          //   locale: 'en',
          //   // weekDay: WeekDay.short,
          //   // fullCalendarDay: WeekDay.short,
          //   selectedDateColor:  Colors.red,
          //   dateColor:  Colors.red,
          //   initialDate: DateTime.now(),
          //   firstDate: DateTime.now().subtract(Duration(days: 140)),
          //   lastDate: DateTime.now().add(Duration(days: 100)),
          //   events: List.generate(
          //     100,
          //         (index) => DateTime.now().subtract(
          //       Duration(
          //         days: index * random.nextInt(5),
          //       ),
          //     ),
          //   ),
          //   onDateSelected: (date) {
          //     setState(() {
          //       _selectedDateNotAppBBar = date;
          //     });
          //   },
          // ),
          SizedBox(height: 51,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Column(
                    children: [
                       Text(
                        'week',
                        style: TextStyle(
                          fontSize: selectIndex==index?18:16,
                          fontWeight: selectIndex==index?FontWeight.w400:FontWeight.w800,
                          color:selectIndex==index? ColorsApp.textColor:ColorsApp.textColor.withOpacity(0.2),
                        ),
                      ),
                      SizedBox(height: 7,),
                      Text(
                        '${index+1}',
                        style:  TextStyle(
                          fontSize: selectIndex==index?18:16,
                          fontWeight: selectIndex==index?FontWeight.w400:FontWeight.w800,
                          color: selectIndex==index? ColorsApp.textColor:ColorsApp.textColor.withOpacity(0.2),
                        ),
                      ),

                    ],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: 34,
                    ),
                itemCount: 10),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CardBabyDetails(
                image: Assets.weightIcon,
                value: '39.9 cm',
                text: 'Length',
              ),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                       SizedBox(
                        height: size.width*.35,
                        width: size.width*.35,
                        child: const CircularProgressIndicator(
                          value: .7,
                          backgroundColor: ColorsApp.white,
                          strokeWidth: 8,
                          color: ColorsApp.primary,
                        ),
                      ),
                      Image.asset(
                        Assets.babyImage,
                        height: size.width*.25,
                        width: size.width*.25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    '70 days was left',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorsApp.textColor,
                    ),
                  )
                ],
              ),
              const CardBabyDetails(
                image: Assets.lengthIcon,
                value: '1.3-1.32 kg',
                text: 'Weight',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
