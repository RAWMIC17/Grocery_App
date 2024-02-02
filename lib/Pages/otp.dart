import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_demo/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class Otp_page extends StatefulWidget {
  const Otp_page({super.key});

  @override
  State<Otp_page> createState() => _Otp_pageState();
}

class _Otp_pageState extends State<Otp_page> {
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        //changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1)); //making user wait 1 seconds
      await Navigator.pushNamed(context, MyRoutes.locationRoute);

      setState(() {
        //changeButton = false; // to come back and button reset
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.phoneRoute);
            },
            icon: Icon(CupertinoIcons.back),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Vx.black,
          actions: [],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 89, top: 50),
                  child: "Enter your 4-digit code"
                      .text
                      .size(26)
                      .fontWeight(FontWeight.w500)
                      .make(),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35, right: 312),
                  child: "Code".text.xl.textStyle(context.captionStyle).make(),
                ),
                SizedBox(
                  //height: 5,
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(style: TextStyle(fontSize: 40),
                  keyboardType: TextInputType.number,
                    obscureText: true,
                    autofocus: true,
                    decoration: InputDecoration(
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        //conditioning the text field
                        return "Code can't be empty";
                      } else if (value.length <= 3 && value.length >= 4) {
                        //password length validation
                        return "Code length must be of 4 digits";
                      } //This validation returns the user to home page
                      return null; //else no problem
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 420, left: 10, right: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: "Resending Otp".text.xl.make(),
                            duration: Duration(milliseconds: 1300),
                          ));
                        },
                        //style: ButtonStyle(
                        //  backgroundColor: MaterialStatePropertyAll(Vx.white),
                        //elevation: MaterialStatePropertyAll(0),
                        //tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        child: "Resend Code"
                            .text
                            .color(Mycolors.buttoncolor)
                            .xl2
                            .light
                            .make(),
                      ).px4(),
                      Container(
                        height: 63,
                        child: ElevatedButton(
                          onPressed: () {
                            moveToHome(context);
                            //if (_formkey)
                          },
                          child: Icon(CupertinoIcons.right_chevron),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Mycolors.buttoncolor),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(90)))),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
