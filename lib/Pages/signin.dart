import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery_app_demo/utils/routes.dart';
import 'package:grocery_app_demo/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("lib/assets/Mask Group.png"),
            Container(
              padding: EdgeInsets.only(top: 50, right: 151),
              child: "  Get your groceries".text.size(28).light.make(),
            ),
            Container(
              padding: EdgeInsets.only(right: 221, top: 5),
              child: "with nector"
                  .text
                  .size(28)
                  .fontWeight(FontWeight.w300)
                  .make(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                width: 500,
                height: 60,
                padding: EdgeInsets.only(top: 4, left: 20, right: 20),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Mycolors.buttoncolor),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.phoneRoute);
                    },
                    child: "Phone Number".text.light.wide.xl3.make())),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: "- Or connect with social media -"
                  .text
                  .wide
                  .base
                  .textStyle(context.captionStyle)
                  .make(),
            ),
            Container(
              child: InkWell(
                onTap: () {},
                //enableFeedback: true,
                splashFactory: NoSplash.splashFactory,
                //child: Container(
                 // height: 100,
                  child: Image.asset("lib/assets/google.png").py16(),
                //),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                //enableFeedback: true,
                
                splashFactory: NoSplash.splashFactory,
                //child: Container(
                  child: Image.asset("lib/assets/facebook.png"),
                //),
              ),
            )
          ],
        ),
      ),
    );
  }
}
