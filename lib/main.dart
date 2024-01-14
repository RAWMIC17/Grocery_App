import 'package:flutter/material.dart';
import 'package:grocery_app_demo/Pages/onboarding_1.dart';
import 'package:grocery_app_demo/Pages/onboarding_2.dart';
import 'package:grocery_app_demo/Pages/splash_screen.dart';
import 'package:grocery_app_demo/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashPage(),//for splashscreen
      initialRoute: MyRoutes.splashRoute,
      routes: {//"/":(context) =>  SplashPage(),
      MyRoutes.splashRoute: (context) => SplashPage(),
      MyRoutes.onboarding1Route:(context) => Onboarding1Page(),
      MyRoutes.onboarding2Route:(context) => Onboarding2Page(),
      }
      );
  }
}
