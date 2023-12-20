import 'package:flutter/material.dart';
import 'package:grocery_app_demo/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      right: false,
      child: Scaffold(
          backgroundColor: context.canvasColor,
          body: Container(
            padding: Vx.m0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(padding: EdgeInsets.only(top: 264.5,left: 20.0,bottom: 0.0),
                    child: Image.asset(
                      "lib/assets/Logo Shapes 41.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left:20.0,bottom: 0.0),
                  child: Image.asset(
                    "lib/assets/design-78d26ec2-4b2f-4002-acb9-389fc152783c 1.png",
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
