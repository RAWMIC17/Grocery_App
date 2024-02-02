import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_demo/utils/theme.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class Location_page extends StatefulWidget {
  const Location_page({super.key});

  @override
  State<Location_page> createState() => _Location_pageState();
}

class _Location_pageState extends State<Location_page> {
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.otpRoute);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Vx.black,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Image.asset("lib/assets/illustration.png").centered(),
            ),
            Container(
              padding: EdgeInsets.only(top: 35),
              child: "Select Your Location".text.xl3.semiBold.make(),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
              child:
                  "Switch on your location to stay in tune with what's happening in your area"
                      .text
                      .lg
                      .align(TextAlign.center)
                      .textStyle(context.captionStyle)
                      .make()
                      .centered(),
            ),
            Container(
              padding: EdgeInsets.only(top: 47, left: 26, right: 26),
              child: CSCPicker(
                layout: Layout.vertical,
                onCountryChanged: (country) {
                  /* setState(() {
                    ///store value in state variable
                    stateValue = country;
                  });*/
                },
                onStateChanged: (state) {
                  /*setState(() {
                    ///store value in state variable
                    stateValue = state!;
                  });*/
                },
                onCityChanged: (city) {
                  /*setState(() {
                    ///store value in city variable
                    cityValue = city!;
                  });*/
                },
                dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    //boxShadow: List.filled(length, fill),
                    border: Border.all(
                      width: 0.8,
                    )),
                countryDropdownLabel: 'Select Country',
                stateDropdownLabel: 'Select State',
                cityDropdownLabel: 'Select City',
                searchBarRadius: 25,
                dropdownDialogRadius: 20,
                selectedItemStyle: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: 'ptSans'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 38),
              height: 106,
              width: 336,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignInPage()));
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
                  "Submit",
                  style: GoogleFonts.ptSans(
                      fontSize: 22.0, fontWeight: FontWeight.w300),
                ), //Icon(CupertinoIcons.arrow_right),
              ),
            )
            /*Container(
              child: TextButton(
                      onPressed: () {
                        setState(() {
                          address = "$cityValue, $stateValue, $countryValue";
                        });
                      },
                      child: Text("Print Data")),
            ),
                Text(address)*/
          ],
        ),
      ),
    );
  }
}
