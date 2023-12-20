import 'package:flutter/material.dart';
import 'package:grocery_app_demo/Pages/onboarding_1.dart';
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
      initialRoute: MyRoutes.onboarding1Route,
      routes: {"/":(context) =>  SplashPage(),
      MyRoutes.splashRoute: (context) => SplashPage(),
      MyRoutes.onboarding1Route:(context) => Onboarding1Page(),
      }
      );
  }
}
