import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery_app_demo/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom: 685.0),
        child: FloatingActionButton.small(
          onPressed: () {},
          backgroundColor: Mycolors.buttoncolor,
          child: Icon(
            CupertinoIcons.arrow_right,
            color: Vx.white,
          ),
          //label: Text('Skip'),
        ),
      ),
      backgroundColor: Mycolors.lightgreencolor,
      body: Stack(
        children: [
          Positioned(
            bottom: 710.0,
            left: 293.0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Mycolors.lightgreencolor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Mycolors.buttoncolor,
                  //backgroundColor: Mycolors.lightgreencolor,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 42.0, top: 52.0, right: 10.0),
            child: Image.asset(
                "lib/assets/delivery-concept-handsome-cacasian-delivery-man-carrying-package-bag-grocery-food-drink-from-store-isolated-grey-studio-wall-copy-space 1.png"),
          ),
          Container(
            padding: EdgeInsets.only(top: 463.0, left: 35.0),
            //color: Vx.white,
            child: Image.asset(
              "lib/assets/Onboarding_Details1.png",
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
              top: 676,
              left: 168.5,
              child: Container(
                //padding: EdgeInsets.all(5.0),
                height: 56,
                width: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(8, 8)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            50.0), // Adjust the radius as needed
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Mycolors.buttoncolor),
                  ),
                  child: Icon(CupertinoIcons.arrow_right),
                ),
              ))
        ],
      ),
    );
  }
}
