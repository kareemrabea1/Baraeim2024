import 'package:baraeim/base_page/presentation/pages/base_page.dart';
import 'package:baraeim/growth_test_page/presentation/pages/growth_questions.dart';
import 'package:baraeim/growth_test_page/presentation/pages/growth_test_screen.dart';
import 'package:baraeim/healthy_diet_page/presentation/pages/healthy_diet_screen.dart';
import 'package:baraeim/home_page_as_pregnant/presentation/pages/home_screen.dart';
import 'package:baraeim/medicines_page/presentation/pages/medicines_screen.dart';

import 'package:baraeim/screens/Register_as_mother.dart';
import 'package:baraeim/screens/Register_as_pregrnant.dart';
import 'package:baraeim/screens/autism_test.dart';
import 'package:baraeim/screens/choose_register.dart';
import 'package:baraeim/screens/daily_exercise.dart';
import 'package:baraeim/screens/forget_password.dart';
import 'package:baraeim/screens/growth_test.dart';
import 'package:baraeim/screens/home_for_artical.dart';
import 'package:baraeim/screens/login.dart';
import 'package:baraeim/screens/modern_parenting.dart';
import 'package:baraeim/screens/tips.dart';
import 'package:baraeim/screens/onboarding1.dart';
import 'package:baraeim/screens/onboarding2.dart';
import 'package:baraeim/screens/onboarding3.dart';
import 'package:baraeim/screens/indicator_view.dart';
import 'package:baraeim/screens/un%20splash.dart';

import 'package:baraeim/screens/vaccinations.dart';
import 'package:baraeim/utils/fcm.dart';
import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the roo000t of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      // home:  const BasePage(),

      home:Un_splach(),

    );
  }
}


