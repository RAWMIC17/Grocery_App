import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_demo/Pages/signin.dart';
import 'package:grocery_app_demo/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.lightgreencolor,
      body: Stack(
        children: [
          /* Positioned(
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
          ),*/
          Container(
            constraints: BoxConstraints.expand(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            padding: EdgeInsets.only(left: 0.7),
            child: Image.asset(
              "lib/assets/8140 1(1).png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            height: 898,
            width: 415,
            child: Container(
              child: Image.asset("lib/assets/Group.png"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 500),
            child: "Welcome             to our store"
                .text
                .size(50)
                .white
                .center
                .make(),
          ),
          Container(
            padding: EdgeInsets.only(top: 624, left: 40),
            child: "Get your groceries in as fast as one hour"
                .text
                .xl
                .light
                .white
                .center
                .make(),
          ),
          Positioned(
              top: 676,
              left: 35.5,
              child: Container(
                //padding: EdgeInsets.all(5.0),
                height: 66,
                width: 320,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignInPage()));
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(100),
                    shadowColor: MaterialStatePropertyAll(Vx.white),
                    minimumSize: MaterialStateProperty.all<Size>(Size(20, 20)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Adjust the radius as needed
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Mycolors.buttoncolor),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.ptSans(
                        fontSize: 26.0, fontWeight: FontWeight.w300),
                  ), //Icon(CupertinoIcons.arrow_right),
                ),
              )),
        ],
      ),
    );
  }
}
