import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app_demo/Pages/onboarding_1.dart';
import 'package:grocery_app_demo/utils/routes.dart';
import 'package:grocery_app_demo/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Onboarding1Page()));
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      right: false,
      child: Scaffold(
          backgroundColor: Vx.green400,
          body: Container(
            padding: Vx.m0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 360, left: 8.0, bottom: 0.0),
                    child: Image.asset(
                      "lib/assets/Group 1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
