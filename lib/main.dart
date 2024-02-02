import 'package:flutter/material.dart';
import 'package:grocery_app_demo/Pages/location.dart';
import 'package:grocery_app_demo/Pages/onboarding_1.dart';
import 'package:grocery_app_demo/Pages/otp.dart';
import 'package:grocery_app_demo/Pages/phone_number.dart';
import 'package:grocery_app_demo/Pages/signin.dart';
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
      home: SplashPage(),//for splashscreen
      //initialRoute: MyRoutes.locationRoute,
      routes: {//"/":(context) =>  SplashPage(),
      MyRoutes.splashRoute: (context) => SplashPage(),
      MyRoutes.onboarding1Route:(context) => Onboarding1Page(),
      MyRoutes.signInRoute:(context) => SignInPage(),
      MyRoutes.phoneRoute:(context) => PhoneNumberPage(),
      MyRoutes.otpRoute:(context) => Otp_page(),
      MyRoutes.locationRoute:(context) => Location_page(),
      }
      );
  }
}
