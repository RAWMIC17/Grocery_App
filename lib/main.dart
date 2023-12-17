import 'package:flutter/material.dart';
import 'package:grocery_app_demo/Pages/splash_screen.dart';
import 'package:grocery_app_demo/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splashRoute,
      routes: {"/":(context) =>  SplashPage(),
      MyRoutes.splashRoute: (context) => SplashPage(),
      }
      );
  }
}
