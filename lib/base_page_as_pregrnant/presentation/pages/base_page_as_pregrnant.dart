import 'package:baraeim/colors_app.dart';
import 'package:baraeim/screens/alarm1.dart';
import 'package:baraeim/screens/vaccinations.dart';
import 'package:flutter/material.dart';

import '../../../assets.dart';
import '../../../home_page/presentation/pages/home_screen.dart';
import '../../../home_page_as_pregnant/presentation/pages/home_screen.dart';
import '../../../medicines_page/presentation/pages/medicines_screen.dart';
import '../../../profile_page/presentation/pages/profile_screen.dart';
import '../../../screens/modern_parenting.dart';

class BasePageAsPregrnant extends StatefulWidget {
  const BasePageAsPregrnant({super.key});

  @override
  State<BasePageAsPregrnant> createState() => _BasePageAsPregrnantState();
}

class _BasePageAsPregrnantState extends State<BasePageAsPregrnant> {
  int pageIndex = 0;
  List content = [
    [
      Assets.activeHome,
      Assets.notActivehome,
      "Home",
    ],
    [
      Assets.DevelopmentActive,
      Assets.DevelopmentDisActive,
      "Development",
    ],
    [
      Assets.VaccinationsActive,
      Assets.VaccinationsDisActive,
      "Vaccinations",
    ],
    [
      Assets.activeProfile,
      Assets.notActiveProfile,
      "Profile",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;

    return Scaffold(
      body: IndexedStack(index: pageIndex, children: const [
        HomeScreenAsPregnant(),
        ModernParenting(),
        Vaccinations(),
        ProfileScreen(),
      ]),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.9,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: SizedBox(
          height: 86,
          child: BottomNavigationBar(
            backgroundColor: ColorsApp.white,
            selectedLabelStyle: const TextStyle(
                fontFamily: '',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ColorsApp.primary),
            unselectedLabelStyle: const TextStyle(
              fontFamily: '',
              fontSize: 12,
              color: Colors.black,
            ),
            currentIndex: pageIndex,
            onTap: (value) {
              pageIndex = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            //  backgroundColor: Theme.of(context).primaryColor,
            selectedItemColor: Colors.black87,
            unselectedItemColor: Colors.black54,
            iconSize: 20,
            items: content.map((e) {
              final index = content.indexOf(e);
              return BottomNavigationBarItem(
                icon: Column(
                  children: [
                    pageIndex == index
                        ? Image.asset(
                            Assets.headerActiveIcon,
                            width: 88,height: 6,
                          )
                        : const SizedBox(
                            height: 6,
                          ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Image.asset(
                        pageIndex == index ? e[0] : e[1],
                        height: size.height*0.025,
                      ),
                    ),
                    Text(
                      e[2],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: pageIndex == index
                            ? ColorsApp.primary
                            : ColorsApp.black,
                      ),
                    )
                  ],
                ),
                label: "",
              );
            }).toList(),
          ),
        ),
      ),
    );
    ;
  }
}
